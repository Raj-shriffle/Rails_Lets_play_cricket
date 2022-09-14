class UserContestsController < ApplicationController
 
 def new
		@user_contest = Contest.find(params[:contest_id])
		@user_contest1 = UserContest.new
	end

	def show 
		@user_contest = Contest.find(params[:id])
		@user_data = @user_contest.match.teams
	end

	def create 
        @user_contest=UserTeam.new(params_method)
        byebug
	  	if @user_contest.save
	  		redirect_to user_contests_path
	  	end

    end



    private 

    def params_method 
    	params.require(:user_team).permit(:player_name[])
    end
    
	
end


