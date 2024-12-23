class HistoriesController < ApplicationController
  def index
    @histories = []
    @histories << Event.all
    @histories << Disc.all
    @histories.flatten!.sort_by! { |history|
      if history.respond_to?("date")
        history.date
      else
        history.release_date
      end
    }
  end
end
