class EventsController < ApplicationController
  def index
    @events = Event.all.order(date: :desc).page(params[:page])
  end
end
