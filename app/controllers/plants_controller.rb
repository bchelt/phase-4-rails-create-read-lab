class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
