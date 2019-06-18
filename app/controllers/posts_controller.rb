class PostsController < ApplicationController
    def index
        @posts = Post.paginate(page: params[:page],per_page: params[:limit])
        # @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])    
    end 

    def destroy
        @post = Post.find(params[:id])    
        @post.destroy
        redirect_to posts_url , alert: 'Post was destroyed'        
    end
end
