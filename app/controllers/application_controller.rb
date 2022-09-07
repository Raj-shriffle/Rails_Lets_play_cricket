class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def after_sign_in_path_for(resource)
		# byebug
		# stored_location_for(resource) ||
  #   if resource.is_a?(Admin)
  #     admin_dashboard_path
  #   else
  #     userss_path(resource)
  #   end
	  if admin_user_signed_in?
	  	admin_dashboard_path
	  else
      userss_path(resource)
	  end
  end

    def after_sign_out_path_for(resource)
      if admin_user_signed_in?
        new_admin_user_session_path
      else
	      user_session_path
      end
      byebug
    end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :gender, :mobile_no, :email, :password, :image])
	end

end
				