class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    venue = Venue.create(params[:venue])
    @venues = Venue.ordered.includes(:concerts)
  end
end
