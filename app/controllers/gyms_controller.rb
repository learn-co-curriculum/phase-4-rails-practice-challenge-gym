class GymsController < ApplicationController

    def show
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    end

    def destroy
        gym = Gym.find_by(id: params[:id])
        gym.destroy
        head :no_content
    end

end
