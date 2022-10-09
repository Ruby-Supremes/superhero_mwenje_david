class HeroPowersController < ApplicationController
    def index
        render json: HeroPower.all
    end

    def show
        render json: find_hero_powers
    end

    def create
        hero_power = HeroPower.create(hero_powers_params)
        if hero_power
            render json: hero_power, status: :created
        else
            render json: { error: "validation errors" }, status: :unprocessable_entity
        end
    end
    
    def destroy
        hero_power = find_hero_powers
        hero_power.destroy
        head :no_content
    end

    private

    def find_hero_powers
        HeroPower.find_by(id: params[:id])
    end

    def hero_powers_params
        params.permit(:strength, :hero_id, :power_id)
    end
end
