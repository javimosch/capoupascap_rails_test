class UsersController < ApplicationController
    include ApplicationHelper::UserInterface
    include UsersHelper::AvatarInterface
    
    def setHelpers
        @avatar_select_tag_items = avatar_select_tag_items
    end
    
    #register screen (GET) and register action (POST), it only set session properties and redirect to dashboard which will 
    #validate through the UserInterface method verify_session
    def register
        setHelpers
        @user = User.new
        
        if request.method == 'POST' then
            @user = User.new user_params
            if @user.save
                session['username'] = user_params['username']
                session['password'] = user_params['password']
                redirect_to controller:'page',action:'dashboard'
            else
                render :action => 'register'
            end
        end
        
    end
    
    #remove session properties and redirect to dashboard
    def logout
        session['username'] = ''
        session['password'] = ''
        @user_logged=false
        redirect_to controller:'page',action:'dashboard'
    end
    
    #destroy user and redirect to dashboard
    def destroy
        User.destroy(params[:id])
        redirect_to controller:'page',action:'dashboard'
    end
    
    #update (POST) user (called from profile) and redirect to dashboard. If fails returns to profile.
    def update
        @user = User.find params[:id]
        if @user.update_attributes user_params then
            redirect_to action:'dashboard',controller:'page'
        else
            render 'profile'
        end
    end
    
    #login screen, login action(POST), which sets session properties, verify session and redirects to dashboard if success
    def login
        if request.method == 'POST' then
            session['username'] = login_params['username']
            session['password'] = login_params['password']
        
            if verify_session() then
                redirect_to action:'dashboard',controller:'page'
            else
                @user.errors.add(:username,"Username not found") if User.find_by(username:login_params['username']).nil?
                @user.errors.add(:password,"Incorrect password") if User.find_by(username:login_params['username'],password:login_params['password']).nil?
            end
        else
            @user = User.new
        end
    end
    
    #profile screen, verify session before render
    def profile
        setHelpers #ex: set avatar select data
        #in this case scenario, an user can see only his profile. So depends on his session.
        verify_session() or redirect_to action:'dashboard',controller:'page'
        @user = User.find params[:id]
    end
    
    private
    
    #user payload
    def user_params
        params.require(:user).permit(:username,:password,:first_name, :last_name,:age,:genre,:avatar)
    end
    
    #login payload
    def login_params
        params.require(:user).permit(:username,:password)
    end
    
    
end
