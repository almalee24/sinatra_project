require 'pry'
class PostController < ApplicationController
    get "/posts" do 
        binding.pry
        redirect_if_not_logged_in
        @posts = Post.all
        erb :"posts/index"
    end

    get '/posts/new' do 
        redirect_if_not_logged_in
        @users = User.all
        erb :"posts/new"
    end

    get '/posts/:id' do
        redirect_if_not_logged_in
        @post = Post.find_by_id(params[:id])
        erb :"posts/show"
    end

    post '/posts' do
        post = Post.new(params)
        if post.save
            redirect "/posts"
        else
            redirect "posts/new"
        end
    end

    get '/posts/:id/edit' do
        redirect_if_not_logged_in
        @users = User.all
        @post = Post.find_by_id(params[:id])
        if @post.user.id == current_user.id 
            erb :"posts/edit"
        else  
            redirect "/posts"
        end
        
    end

    patch '/posts/:id' do
        @post = Post.find_by_id(params[:id])
        params.delete("_method")
        if @post.update(params)
            redirect "/posts/#{@post.id}"
        else
            redirect "posts/new"
        end
    end

    delete "/posts/:id" do 
        @post = Post.find_by_id(params[:id])
        if @post.user.id == current_user.id 
            @post.destroy 
        end
        redirect "/posts"
    end
end 