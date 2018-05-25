class CandidatesController < ApplicationController
  
  def index
    @candidates = Candidate.all.order(:loadOrder)
  end

  def home
    @candidates = Candidate.all.order(:loadOrder)
    @pastDue = PastDue.all
  end

  def new
    @candidate = Candidate.new
  end

  def show
    @candidate = Candidate.find(params[:id])
  end
  
  private

    def candidate_params
      params.require(:candidate).permit(:name, :phone, :email, :address, :website, :facebook, :race, :rating, :imgur_id, :section1, :section2, :section3, :section4, :section5, :section6, :section7, :section8)
    end
end
