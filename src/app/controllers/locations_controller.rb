class LocationsController < ApplicationController

    before_action :set_location, only: [:show, :edit, :update, :destroy]

    def index
        @locations = Location.all
    end

    def show
    end

    def new

        @location = Location.new


    end

   def create
        @location = Location.new(location_params)

        if @location.save
            redirect_to @location, notice: 'Une nouvelle location a été ajouté avec succès !'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @location.update(location_params)
            redirect_to @location, notice: 'Le location a été modifié avec succès !'
        else
            render :edit
        end
    end

    def destroy
        @location.destroy
        redirect_to locations_url, notice: 'Le location a été supprimé avec succès !'
    end

    private

    def set_location
        @location = location.find(params[:id])
    end

    def location_params
        params.require(:location).permit(:videotheque, :date_emprunt)
    end
end


