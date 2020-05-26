class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_k, :email, :phone_number, :age ])
	end

	def after_sign_in_path_for(resource)
		root_path
	end

	# ログアウト後に遷移するpathを設定
	def after_sign_out_path_for(resource)
		root_path
	end

	def authenticate_user
		if @current_user == nil
			redirect_to("/login")
		end
	end
end
