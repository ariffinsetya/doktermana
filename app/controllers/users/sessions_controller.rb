class Users::SessionsController < Devise::SessionsController
    def new 
        super
    end

    def create
        super do |user|
        end
    end

    def destroy
        super
    end

    def after_sign_out_path(_resource)
        new_user_session_path
    end

    def after_sign_in_path_for(_resource)
        stored_location_for(_resource) || root_path
    end
end