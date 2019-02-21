class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home competitions apts]

  def home
  end

  def competitions
  end

  def apts
  end
end
