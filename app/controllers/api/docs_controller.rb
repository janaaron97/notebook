class Api::DocsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def index
    render json: Doc.all
  end

  def show
  	doc = Doc.find(params[:id])
  	render json: doc
  end

  def create
  	doc = Doc.new(doc_params)
  	 if doc.save
      head 200
    else
      head 500
    end
  end

  def destroy
  	doc = Doc.find(params[:id])
  	doc.destroy
  	render json: {
  		status: 200,
  		message: "Successfully deleted!"
  	}.to_json
  end

  def update
  	doc = Doc.find(params[:id])
  	if doc.update
  		head 200
  	else
  		head 500
  	end
  end

  private
  def doc_params
  	params.require(:doc).permit(:title)
  end
end