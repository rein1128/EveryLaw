class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    if !:current_admin_user
      before_action :set_search
    end

    def set_search
      @q = Question.ransack(params[:q])
      @questions = @q.result.includes(:titles).page(params[:page]).per(25)
    end

    protected
    def configure_permitted_parameters
    	added_attrs = [ :image, :user_name ]
        devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
        devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
    end
end
