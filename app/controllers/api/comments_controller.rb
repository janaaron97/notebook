class Api::CommentsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :find_comment

  def create
    comment = @doc.comments.new(comment_params)
    if item.save
      render status: 200, json: {
        message: "Successfully created To-do Item.",
        todo_list: @doc,
        todo_item: comment
      }.to_json
    else
      render status: 422, json: {
        message: "To-do Item creation failed.",
        errors: comment.errors
      }.to_json
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

  def find_comment
    @doc = Doc.find(params[:doc_id])
  end
end