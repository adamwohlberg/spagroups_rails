class UserController < ApplicationController
  def index
  end

  def show
  end

  def update
  end

  def create
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email)
  end
end
