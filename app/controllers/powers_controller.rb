class PowersController < ApplicationController
    def index
        render json: Power.all
    end


    def show
        power = find_power
        if power
            render json: power
        else
            render json: { error: "Power not found" }, status: :not_found
        end
    end

    def create
        power = Power.create(power_params)
        render json: power, status: :created
    end

    def update
        power = find_power
        if power
            power_update = power.update(power_params)
            if power_update
                render json: power, status: :accepted
            else
                render json: { error: "validation errors" }, status: :unprocessable_entity
            end
        else
            render json: { error: "Power not found" }, status: :not_found
        end
    
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
