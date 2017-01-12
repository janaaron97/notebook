class DocsController < ApplicationController
  def index
  	@doc = Doc.where(user_id: current_user)
  end

  def new
  	@doc = current_user.docs.build
  end

  def create
  	@doc = current_user.docs.build(doc_params)
  	if @doc.save
  		redirect_to @doc
  	else
  		render 'new'
  	end
  end

  def edit
  	@doc = Doc.find(params[:id])
  end

  def update
  	@doc = Doc.find(params[:id])
  	if @doc.update(doc_params)
  		redirect_to @doc
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@doc = Doc.find(params[:id])
  	@doc.destroy
  	redirect_to docs_path
  end

  def show
  	@doc = Doc.find(params[:id])
  end

  private 
  	def doc_params
  		params.require(:doc).permit(:title, :content)
  	end
end
