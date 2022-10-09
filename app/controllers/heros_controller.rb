class HerosController < ApplicationController
    def index
        render json: Hero.all
    end

    def show
        hero = find_hero
        if hero
            render json: hero
        else
            render json: { error: "Hero not found" }, status: :not_found
        end
    end

    def create
        hero = Hero.create(hero_params)
        render json: hero, status: :created
    end

    def destroy
        hero = find_hero
        hero.destroy
        head :no_content
    end

    private

    def find_hero
        Hero.find_by(id: params[:id])
    end

    def hero_params
        params.permit(:name, :super_name)
    end
end
