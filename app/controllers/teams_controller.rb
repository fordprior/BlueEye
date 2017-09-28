class TeamsController < ApplicationController
  def index
    @team = Team.new
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)

    if @team.save
      redirect_to :back
    end
  end

  def show
    @team = Team.eager_load(:apps).find(params[:id])
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
