module ApplicationHelper
    
    #helper interface for controllers
    module UserInterface
        
        private 
        
        #check session arguments and retrieve user. 
        #sets @user_logged and @user
        #returns true if session data correspond to a valid user.
        def verify_session
            @user = nil
            @user_logged = false
            if session[:username] and session[:password] then
                @user = User.find_by(username:session[:username],password:session[:password])
                if !@user.nil? then
                    @user_logged = true
                    return true
                else
                    @user = User.new
                    @user.username = session[:username]
                    @user.password = session[:password]
                    return false
                end
            end
            return false
        end
        
    end
    
end
