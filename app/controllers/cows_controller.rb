class CowsController < ApplicationController
  def index
    @cows = Cow.all
    @hostname = Socket.gethostname
    @request_host = request.host
    @db_info = ActiveRecord::Base.connection.adapter_name
  end

  def new
    @cow = Cow.new
  end

  def create
    cow = Cow.create cow_params
    redirect_to root_path
  end

  private

  def cow_params
     params.require(:cow).permit([:name, :age_in_years, :breed])
  end

end
