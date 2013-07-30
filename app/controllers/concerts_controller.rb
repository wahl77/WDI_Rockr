class ConcertsController < ApplicationController
  def new
    @concert = Concert.new
  end

  def create
    concert = Concert.create(params[:concert])
    @venues = Venue.ordered.includes(:concerts)
  end
end
