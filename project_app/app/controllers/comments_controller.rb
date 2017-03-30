class CommentsController < ApplicationController
  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  @comments = Comment.all
end

def show
 @comment = Comment.find(params[:id])
end


def new
 # @comment = Comment.create(comment_param)
end





end
