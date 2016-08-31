module UsersHelper
    module ChallengeInterface
        public
        def retreiveChallenges
            @challenges = (@user.nil? ? nil : @user.challenges.all)||[]
            @challenges_received = (@user.nil? ? nil : Challenge.where(rival_id:@user.id))||[]
        end
    end
    module AvatarInterface
        public
        def avatar_select_tag_items
            #ex [['Choice', ''],['alyx', 'alyx'], ['faith', 'faith']]
            names = ['alyx','faith','duke','jade','lara','lucas','niko','tomas']
            names.map! {|val| [val.capitalize,val.downcase]}
            names.insert(0,['Choice',''])
            names
        end
    end
end
