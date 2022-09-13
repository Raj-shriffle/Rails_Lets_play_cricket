class UserContestsController < ApplicationController

	def new
		@user_contest = Contest.find(params[:contest_id])
	end

	def show 
		@user_contest = Contest.find(params[:id])
		@user_data = @user_contest.match.teams
	end

	def create 
     byebug 
    end
end
