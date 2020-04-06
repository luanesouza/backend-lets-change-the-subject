class ApplicationController < ActionController::API
    # before_action :authorize
    rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
    # rescue_from ActionController::RoutingError, :with => :record_not_found    

    private

    def record_not_found(error)
        render :json => {:error => error.message}, :status => :not_found
    end 

    # serialization_scope :view_context
#     before_action :authorized

#   def secret
#     "sylwia"
#   end

#   def encode_token(payload)
#     JWT.encode(payload, secret)
#   end

#   def auth_header
#     request.headers['Authorization']
#   end

#   def decoded_token
#     if auth_header
#       token = (auth_header.split(" ")[1], secret)
#       begin
#         JWT.decode(token)
#       rescue JWT::DecodeError
#         []
#       end
#     end
#   end

#   def current_user
#     if !decoded_token.empty?
#       user_id = decoded_token[0]['user_id']
#       @user = User.find(id: user_id)
#     else
#       nil
#     end
#   end

#   def logged_in?
#     !!current_user
#   end

#   def authorize
#     render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
#   end
end
