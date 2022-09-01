class StepsController < ApplicationController
  def index
  end

  def create
    session[:email_registration] = params[:email_registration]
    redirect_to steps_path
  end

  def update
  end
end
