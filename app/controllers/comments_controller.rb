class CommentsController < ApplicationController
  def show
  end

  def create
    @doc = Doc.find(params[:post_id])
    @comment = @doc.comments.build(comment_params)
    if @comment.save
      redirect_to @comment
    else
      render 'new'
    end
  end

  def new
    @doc = Doc.find(params[:post_id])
    @comment = @doc.comments.build
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
