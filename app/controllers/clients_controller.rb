class ClientsController < ApplicationController

    def show
        client = Client.find_by(id: params[:id])
        render json: client, status: :ok
    end

end
