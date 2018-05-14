class HomeController < ApplicationController
  def index
    @posts =Post.all
  end

  def create
    @post= Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/home/index'
    # @post << 바뀌어도 무관한 변수입니다!!!
  end

  def new
  end
  
  def destroy 
    post =Post.find(params[:post_id])
    post.destroy
    
    redirect_to '/home/index'
  end
    
    
end
