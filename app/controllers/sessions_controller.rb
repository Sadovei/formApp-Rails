class SessionsController < ApplicationController
    def destroy
        session[:person_id] = nil
        redirect_to root_path
    end

    def new
    end

    def create
        person = Person.find_by(email: params[:email])

        if person.present? && person.authenticate(params[:password])
            session[:person_id] = person.id
            redirect_to root_path
        else
            render plain: "da"
            flash[:alert] = "Invalid email or password!"
        end
    end
end