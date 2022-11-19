class RegistrationsController < ApplicationController
    def new
        @person = Person.new
    end

    def create
        @person = Person.new(person_params)

        if @person.save
            session[:person_id] = @person.id
            redirect_to root_path
        else
            render :new
        end
    end

    private
    
    def person_params
        params.require(:person).permit(:firstName, :lastName, :email, :password, :password_confirmation)
    end
end