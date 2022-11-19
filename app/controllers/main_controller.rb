class MainController < ApplicationController
    def index
        if session[:person_id]
            @person = Person.find_by(id: session[:person_id])
        end
    end
end