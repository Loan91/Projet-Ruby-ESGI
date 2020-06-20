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
            redirect_to @film, notice: 'Film created'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @film.update(film_params)
            redirect_to @film, notice: 'Film updated'
        else
            render :edit
        end
    end

    def destroy
        @film.destroy
        redirect_to films_url, notice: 'Film destroyed'
    end

    private

    def set_film
        @film = Film.find(params[:id])
    end

    def film_params
        params.require(:film).permit(:titre, :date_sortie)
    end
end
