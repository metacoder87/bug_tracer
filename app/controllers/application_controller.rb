class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception

    # def current_user
    #     return nil unless session[:session_token]
    #     @current_user ||= User.find_by(session_token: session[:session_token])
    # end
    
    # def require_user!
    #     redirect_to new_session_url if current_user.nil?
    # end

end
