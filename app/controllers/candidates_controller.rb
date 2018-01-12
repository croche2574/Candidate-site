class CandidatesController < ApplicationController
  def new
    @candidate = Candidate.new
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def create
    
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      flash[:success] = "Candidate Added!"
      redirect_to @candidate
    else
      render 'new'
    end
  end

  private

    def candidate_params
      params.require(:candidate).permit(:name, :phone, :email, :address, :website, :facebook, :race, :rating)
    end
end
