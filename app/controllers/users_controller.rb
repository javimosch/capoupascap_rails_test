class UsersController < ApplicationController
    include ApplicationHelper::UserInterface
    include UsersHelper::AvatarInterface
    
    def setHelpers
        @avatar_select_tag_items = avatar_select_tag_items
    end
    
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
    
    
    def logout
        session['username'] = ''
        session['password'] = ''
        @user_logged=false
        redirect_to controller:'page',action:'dashboard'
    end
    
   
    
    
    
    def destroy
        User.destroy(params[:id])
        redirect_to controller:'page',action:'dashboard'
    end
    
    def update
        @user = User.find params[:id]
        if @user.update_attributes user_params then
            redirect_to action:'dashboard',controller:'page'
        else
            render 'profile'
        end
    end
    
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
    
    
    def profile
        setHelpers
        #in this case scenario, an user can see only his profile. So depends on his session.
        verify_session() or redirect_to action:'dashboard',controller:'page'
        @user = User.find params[:id]
    end
    
    private
    
    def user_params
        params.require(:user).permit(:username,:password,:first_name, :last_name,:age,:genre,:avatar)
    end
    
    def login_params
        params.require(:user).permit(:username,:password)
    end
    
    
end
