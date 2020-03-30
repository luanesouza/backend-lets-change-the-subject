class ApplicationController < ActionController::API
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
#       begin
#         JWT.decode(auth_header.split(" ")[1], secret)
#       rescue JWT::DecodeError
#         nil
#       end
#     end
#   end

#   def current_user
#     if decoded_token
#       user_id = decoded_token[0]['user_id']
#       @user = User.find(user_id)
#     end
#   end

#   def logged_in?
#     !!current_user
#   end

#   def authorized
#     render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
#   end
end
