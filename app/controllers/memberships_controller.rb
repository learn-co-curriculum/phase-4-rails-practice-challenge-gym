class MembershipsController < ApplicationController

    def index
        render json: Membership.all, status: :ok
    end

    def show
        member = Membership.find_by(id: params[:id])
        render json: member, status: :ok
    end

    def create
        member = Membership.create(membership_params)
        render json: member, status: :created
    end

    private

    def membership_params
        params.permit(:charge, :gym_id, :client_id)
    end

end
