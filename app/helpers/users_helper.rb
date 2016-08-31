module UsersHelper
    module ChallengeInterface
        public
        # assign the challanges that the current (session) user owns and the challanges against him
        def retreiveChallenges
            @challenges = (@user.nil? ? nil : @user.challenges.all)||[]
            @challenges_received = (@user.nil? ? nil : Challenge.where(rival_id:@user.id))||[]
        end
    end
    module AvatarInterface
        public
        #returns the avatar select data
        def avatar_select_tag_items
            #ex [['Choice', ''],['alyx', 'alyx'], ['faith', 'faith']]
            names = ['alyx','faith','duke','jade','lara','lucas','niko','tomas']
            names.map! {|val| [val.capitalize,val.downcase]}
            names.insert(0,['Choice',''])
            names
        end
    end
end
