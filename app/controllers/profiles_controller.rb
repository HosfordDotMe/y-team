class ProfilesController < ApplicationController
  def index
    # Need to add roles to this
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end
end