class CommentsController < ApplicationController
   before_action :set_event, only: [:show, :edit, :update, :destroy]
      def index
        @comments = Comment.all
      end

      def show
      @comment = Comment.find(params[:id])
      end


      def new
      # @comment = Comment.create(comment_param)
      end

      def edit
           @comment = Comment.find(params[:id])
      end

      def update
          @comment = Comment.find(params[:id])

          if @comment.update(comments_params)
              redirect_to event_path(@comment.event_id)
          else
              flash[:error] = @comment.errors.full_messages
              flash[:error] = @comment.errors.full_messages
              redirect_to :edit
          end

      end

        def create
            
            @comment = Comment.new(comments_params)
            @comment.user_id = current_user.id
            
            if @comment.save 
                redirect_to event_path(@comment.event_id)
            else
                flash[:error] = @comment.errors.full_messages
                redirect_to event_path(@comment.event_id)
            end

        end

        def delete
            @comment = Comment.find(params[:id])
            
                if @comment.destroy
                    redirect_to event_path(@comment.event_id)
                else
                    redirect_to event_path(@comment.event_id)
                end
   
        end

        def comments_params
            params.require(:comment).permit(:event_id, :content)    
        end

end
