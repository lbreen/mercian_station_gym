class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home apts]

  def home
  end

  def apts
  end
end
