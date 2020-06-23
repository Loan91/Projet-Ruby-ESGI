class VideothequesController < ApplicationController



    def index
        ## Si l'utilisateur n'est pas connecté, le rediriger
        # if !user_signed_in?
        #     redirect_to root_path
        # end

        ## Afficher la vidéothèque
        @user = User.find(current_user.id)
    end

    def destroy
        user = User.find(current_user.id)
        film = Film.find(params[:id]);
        user.films.destroy(film)
        redirect_to videotheques_path
    end

    def new
        @films = Film.all
    end

    def create
        user = User.find(current_user.id)
        film = Film.find(params[:film_id]);
        user.films << film
        redirect_to videotheques_path
    end
end