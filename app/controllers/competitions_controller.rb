class CompetitionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_competition, only: %i[show create]

  def index
    @competitions = Competition.all
  end

  def show
    @previous_events = @competition.events.select { |e| e.time < DateTime.now }
  end

  private

  def find_competition
    @competition = Competition.find(params[:id])
  end

  def competition_params
    params.require(:competition).permit(:name, :description, :current_winner)
  end
end
