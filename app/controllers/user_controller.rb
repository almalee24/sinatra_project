class UserController < ApplicationController
    get '/users' do 
        erb :"users/show"
    end

    get '/users/signup' do 
        erb :"users/signup"
    end

    post '/users' do 
        @user = User.new(params)

        if @user && @user.save 
            session[:user_id] = @user.id
            redirect "/posts"
        else  
            erb :"users/signup"
        end
    end

    get '/users/:id/edit' do
        redirect_if_not_logged_in
        erb :"users/edit" 
    end

    patch '/users/:id' do
        params.delete("_method")
        current_user.update(params)
        erb :"users/show"
    end

    post '/allusers' do 
        @user = User.find_by(name: params[:name])
        erb :"users/show"
    end
end 