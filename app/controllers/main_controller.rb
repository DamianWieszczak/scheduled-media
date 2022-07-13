class MainController < ApplicationController

  def index
    flash[:notice] = "Loggged in successfully"
    flash[:alert] = "Invalid email or password"
  end

end