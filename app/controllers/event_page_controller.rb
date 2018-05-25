class EventPageController < ApplicationController
  layout 'forum'
  def forum
    @candidates = Candidate.all.order(:loadOrder)
    @photos = EventPhoto.all
    @columnCount = 1
  end
end
