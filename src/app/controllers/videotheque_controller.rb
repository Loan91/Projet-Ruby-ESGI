class VideothequeController < ApplicationController
    def index
        ## Si l'utilisateur n'est pas connecté, le rediriger
        # if !user_signed_in?
        #     redirect_to root_path
        # end

        ## Afficher la vidéothèque
        @user = User.find(current_user.id)
    end
end