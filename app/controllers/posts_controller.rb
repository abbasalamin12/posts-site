class PostsController < ApplicationController
    before_action :set_post, only: %i[show edit update]
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
    end

    def edit       
    end

    def update
        if @post.update(post_params)
            redirect_to post_url(@post)
        else
            redirect_to edit_post_url(@post)
        end
    end

    def destroy
        set_post.destroy
        redirect_to posts_url
    end
    def create
        @post = Post.new(post_params)
        begin
            @post.save!
            redirect_to posts_url
        rescue => exception
            render :new
        end
    end

    private 
        def set_post
            @post = Post.find(params[:id])
        end

        def post_params
            params.require(:post).permit(
                :title, 
                :content
            )
        end
end