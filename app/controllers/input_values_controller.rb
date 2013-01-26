class InputValuesController < ApplicationController
  respond_to :json

  def index
    if session[:entry_id] && (entry = Entry.find(session[:entry_id]))
      respond_with entry.input_values
    else
      entry = Entry.create
      session[:entry_id] = entry.id
      respond_with entry.input_values
    end
  end

  def create
    entry = Entry.find(session[:entry_id])
    respond_with entry.input_values.create(params[:input_value])
  end

  def update
    input = InputValue.find(params[:_id])
    input.value = params[:value]
    input.result = eval params[:value]  #todo: when have list of operation add own parser
    input.save
    render :json => input
  end

  def destroy
    respond_with InputValue.destroy(params[:id])
  end
end
