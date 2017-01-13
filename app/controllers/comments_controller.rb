class CommentsController < ApplicationController
  def create
  	@doc = Doc.find(params[:doc_id])
  	@comment = @doc.comments.create(params[:comment].permit(:comment))
  	redirect_to doc_path(@doc)
  end
end
