class UsersController < ApplicationController
  def index
    @users = User.all.map { |user| public_info(user) }

    render json: @users
  end

  def show
    set_user
    render json: public_info(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Not Found', detail: 'The resource you are looking for does not exist'}
  end

  def public_info(user)
    {
      id: user.id,
      username: user.username
    }
  end
end
