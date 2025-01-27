class ApplicationController < ActionController::API
  before_action :sanitize_devise_params, if: :devise_controller?
  before_action :authenticate_user!
  respond_to :json

  rescue_from ActionController::InvalidAuthenticityToken,
              with: :invalid_auth_token

  def sanitize_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username])
  end

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    readable_errors = resource
                      .errors
                      .messages
                      .to_a
                      .map { |msg| msg[1].map { |el| "#{msg[0]} #{el}".capitalize } }
                      .flatten
    render json: {
      error: 'Invalid user information',
      status: '400',
      details: readable_errors
    }, status: :bad_request
  end

  def invalid_auth_token
    respond_to do |format|
      format.json { head 401 }
    end
  end
end
