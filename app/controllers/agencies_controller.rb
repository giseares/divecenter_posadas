class AgenciesController < ApplicationController
  before_action :authenticate_user!
  def index
    @agencies = Agency.all
    @activities_sal = Activity.kind_of
  end

  def show
    @agency = Agency.find(params[:id])
    @activities_agency = Activity.where(agency_id: params[:id])
  
  end
end
