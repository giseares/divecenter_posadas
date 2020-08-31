class AgenciesController < ApplicationController
  before_action :authenticate_user!
  def index
    @agencies = Agency.all
  end
end
