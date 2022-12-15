class MissionsController < ApplicationController
end
class Api::V1::MissionsController < ApplicationController
  def index
    missions = Missions.all

    if friends
      render json: {status: "SUCCESS", message: "Fetched all the missions successfully", data: missions}, status: :ok
    else
      render json: missions.errors, status: :bad_request
    end
  end
end
