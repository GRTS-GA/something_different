class CommentsController < ApplicationController
  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  @comments = Comment.all
end

def show
 @comment = Comment.find(params[:id])
end


def new
 @comment = Comment.new()
end

def create
 @comment = Comment.new(comment_params)
  @comment.user_id = current_user.id

  if @comment.save
    redirect_to @comment.event
  else
    render :new
  end
end

def edit
    @comment = Comment.find(params[:id])
    render :edit
end

def update
 @comment = Comment.find(params[:id])
 @comment.user_id = current_user.id

 if @comment.update(comment_params)
  redirect_to @comment.event
else
  render :edit
end
end

def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to event_path(@comment.event)
end

def comment_params
      params.require(:comment).permit(:user_id, :event_id, :content)
  end


end
