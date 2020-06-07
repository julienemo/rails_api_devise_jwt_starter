class SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    render json: { id: current_user.id, detail: 'user logged out', status: "ok" }
  end
end
