class FilmsController < ApplicationController
    before_action :set_film, only: [:show, :edit, :update, :destroy]

    def index
        @films = Film.all
    end

    def show
    end

    def new
        @film = Film.new
    end

   def create
        @film = Film.new(film_params)

        if @film.save
            redirect_to @film, notice: 'Un nouveau film a été ajouté avec succès !'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @film.update(film_params)
            redirect_to @film, notice: 'Le film a été modifié avec succès !'
        else
            render :edit
        end
    end

    def destroy
        @film.destroy
        redirect_to films_url, notice: 'Le film a été supprimé avec succès !'
    end

    private

    def set_film
        @film = Film.find(params[:id])
    end

    def film_params
        params.require(:film).permit(:titre, :date_sortie)
    end
end
