class MissionsController < ApplicationController
  def index
    missions = Mission.all
    render json: { missions: missions }
  end
end
