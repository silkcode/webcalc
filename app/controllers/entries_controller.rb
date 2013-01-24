class EntriesController < ApplicationController
  respond_to :json

  def index
    #if session[:entry_id]
    #  respond_with Entry.find(session[:entry_id])
    #else
    #  entry = Entry.create!()
    #  session[:entry_id] = entry.id
    #  respond_with entry
    #end
    respond_with Entry.first.input_values
  end

  def show
    respond_with Entry.find(params[:id])
  end

  def create
    respond_with Entry.create(params[:entry])
  end

  def update
    respond_with Entry.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end
end
