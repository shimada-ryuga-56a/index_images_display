class EventsController < ApplicationController
  def index
    @events = Event.with_attached_visual_image.all.order(date: :desc).page(params[:page])
  end
end
