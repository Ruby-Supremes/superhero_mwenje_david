class PowersController < ApplicationController
    def index
        render json: Power.all
    end

    def show
        render json: find_power
    end

    def create
        power = Power.create(power_params)
        render json: power, status: :created
    end

    def destroy
        power = find_power
        power.destroy
        head :no_content
    end

    private

    def find_power
        Power.find_by(id: params[:id])
    end

    def power_params
        params.permit(:name, :description)
    end
end
