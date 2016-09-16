class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.create(user_session_params)
    if @user_session.save
      redirect_to root_url
    else
      render "new"
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to "new"
  end

  private

  def user_session_params
    params.require(:user_session).permit(:email, :password)
  end
end
