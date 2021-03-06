class ApplicationController < ActionController::Base

  helper_method :current_user_session, :current_user
  protect_from_forgery with: :exception

  protected
  def handle_unverified_request
    if current_user_session
      current_user_session.destroy
    end
    redirect_to root_url
  end

  private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end
end
