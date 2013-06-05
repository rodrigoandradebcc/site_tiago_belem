class ApplicationController < ActionController::Base
  protect_from_forgery


  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = exception.message
  	render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
  end

end
