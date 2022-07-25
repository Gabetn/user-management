class HealthController < ApplicationController
  def index
    render json: { status: 'Healthy' }, status: 200
  end
  # Note: could add more extensive health information on things like db connectivity
end
