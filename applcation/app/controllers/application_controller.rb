class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :mark_notification_as_read
  def mark_notification_as_read
    if params[:notification_id]
      notif = current_user.notifications.where(id: params[:notification_id]).first
      notif.update_attributes(read_at: Time.now)
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name,:email, :password, :password_confirmation, :mobile,:terms_and_conditions,:img_url, roles: []) }
  end

end
