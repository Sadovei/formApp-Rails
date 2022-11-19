class ApplicationController < ActionController::Base
    before_action :set_current_person

    def set_current_person
        if session[:person_id]
            Current.person = Person.find_by(id: session[:person_id])
        end
    end

    def require_person_logged_in
        redirect_to sign_in_path, alert: "you must be signed in to do that." if Current.person.nil?
    end
end
