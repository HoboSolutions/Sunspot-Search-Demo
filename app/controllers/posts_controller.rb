class PostsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    if params[:query]
      @posts = Post.search do
        keywords(params[:query])
        paginate(:page => (params[:page] or 1), :per_page => 10)
        end.results
      @posts.member_class = Post
    else
      hobo_index
    end
  end
end