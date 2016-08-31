require 'wannabe_bool'

class PageController < ApplicationController
    include ApplicationHelper::UserInterface
    include UsersHelper::ChallengeInterface
    def dashboard
        @players = User.all
        verify_session()  
        retreiveChallenges #UserHelper::ChallengeInterface
    end
    
    def challenge
        verify_session() or redirect_to action:'dashboard'
        @rival = User.find params[:id]
        retreiveChallenges #UserHelper::ChallengeInterface
        @challenge = Challenge.new
    end
    
    def create_challenge
       verify_session() or redirect_to action:'dashboard'
        
       @user = User.find(challenge_params[:author_id])
       logger.debug "challenge_params #{challenge_params.inspect}"
       @user.challenges.create!(challenge_params)
       redirect_to action:'dashboard',controller:'page'
       
    end
    
    def close_challenge
        @challenge = Challenge.find(params[:challenge_id])
        if !@challenge.nil? then
            accepted = params[:accepted].to_b
            @challenge.update_attributes accepted: accepted, closed: true
            
            if accepted then
                @challenge.rival.update_attribute :score, @challenge.rival.score+30 #author gain 30 points
            else
                @challenge.rival.update_attribute :score, @challenge.rival.score-30 #rival losses 30 points
            end
            
        end
        redirect_to action:'dashboard'
    end
   
   
    private
    
    def challenge_params
        p = params.require(:challenge).permit(:author_id,:rival_id,:message)
        p[:message] =  params[:message]
        p
    end
    
    
end
