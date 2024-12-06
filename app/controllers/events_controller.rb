class EventsController < ApplicationController
  def index
    @events = Event.with_attached_visual_image.all.order(date: :desc).page(params[:page])
  end

  def image
    @event = Event.includes(visual_image_attachment: :blob).find(params[:id])
  end
end
