class ProfilesController < ApplicationController
  before_action :set_user

  def index
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: { error: @user.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    id = @user.id
    @user.destroy
    render json: { id: id, status: 'user deleted' }
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
    # in postman, to write body in "raw" that contains a scope, do key; user[something]
  end
end
