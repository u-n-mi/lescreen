class CandidatesController < ApplicationController
    skip_before_filter :authenticate_user!

    def new
      @candidate = Candidate.new
    end

    def show
      @candidate = Candidate.find(params[:id])
      @video = Video.new
    end

    def create
      @candidate = Candidate.new(candidate_params)
      @candidate.user = current_user
    end

    private

    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :email)
    end
end

# not sure what we need here

#this could be the candidate page that we're talking about during the morning
