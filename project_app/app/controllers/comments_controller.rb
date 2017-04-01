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

  @comment.event_id = params[:id]

  if @comment.save
    redirect_to @comment
  else
    render :new
  end

end


def comment_params
      params.require(:comment).permit(:user_id, :event_id, :content)
  end


end
