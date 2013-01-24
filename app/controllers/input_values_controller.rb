class InputValuesController < ApplicationController
  respond_to :json

  def index
    if session[:entry_id] && (entry = Entry.find(session[:entry_id]))
      respond_with entry.input_values
    else
      entry = Entry.create()
      session[:entry_id] = entry.id
      respond_with entry.input_values
    end
  end

  def create
    entry = Entry.find(session[:entry_id])
    respond_with entry.input_values.create(params[:input_value])
  end

  def update
    respond_with InputValue.update(params[:id], params[:input_value])
  end

  def destroy
    respond_with InputValue.destroy(params[:id])
  end
end
