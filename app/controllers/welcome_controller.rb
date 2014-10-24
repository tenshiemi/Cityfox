class WelcomeController < ApplicationController
  skip_before_filter :require_login, only: [:index]

  def index
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
