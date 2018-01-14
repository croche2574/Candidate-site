class CandidatesController < ApplicationController
  
  def index
    @candidates = Candidate.all
  end

  def home
    @candidates = Candidate.all
  end

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

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    if @candidate.update_attributes(candidate_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  private

    def candidate_params
      params.require(:candidate).permit(:name, :phone, :email, :address, :website, :facebook, :race, :rating, :imgur_id)
    end
end
