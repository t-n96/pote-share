class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile])
  end

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインしました"
      root_path
    else
      flash[:notice] = "新規登録完了しました"
      edit_user_registration_path
    end
  end

  def after_sign_out_path_for(resource)
      root_path
  end

end
