class PasswordsController < ApplicationController
    before_action :require_person_logged_in
    
    def edit

    end

    def update
       if Current.person.update(password_params)
        redirect_to root_path
       else
        render plank: "da"
       end
    end

    private
    def password_params
        params.require(:person).permit(:password, :password_confirmation)
    end
end