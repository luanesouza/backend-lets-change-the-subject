class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  #### THIS CODE IS COMMENTED OUT UNTIL WE HAVE LOGIN ####
      # before_action :authorized

  #### CHANGE SECRET AND ADD IT TO ENV #####
  def secret
    "sylwia"
  end

  def encode_token(payload)
    JWT.encode(payload, secret)
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      splitted = auth_header.split(" ")[1]
      begin
        JWT.decode(splitted, secret)
      rescue JWT::DecodeError
        []
      end
    end
  end

  def current_user
    if decoded_token && !decoded_token.empty?
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  private

  def record_not_found(error)
      render :json => {:error => error.message}, :status => :not_found
  end 

end
