class CandidatesController < ApplicationController
  
  def home
    @candidates = Candidate.all.order(:loadOrder)
  end

  def show
    @candidate = Candidate.find(params[:id])
  end
end
