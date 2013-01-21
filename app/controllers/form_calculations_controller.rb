class FormCalculationsController < ApplicationController
  # GET /form_calculations
  # GET /form_calculations.json
  def index
    @form_calculations = FormCalculation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @form_calculations }
    end
  end

  # GET /form_calculations/1
  # GET /form_calculations/1.json
  def show
    @form_calculation = FormCalculation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form_calculation }
    end
  end

  # GET /form_calculations/new
  # GET /form_calculations/new.json
  def new
    @form_calculation = FormCalculation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form_calculation }
    end
  end

  # GET /form_calculations/1/edit
  def edit
    @form_calculation = FormCalculation.find(params[:id])
  end

  # POST /form_calculations
  # POST /form_calculations.json
  def create
    @form_calculation = FormCalculation.new(params[:form_calculation])

    respond_to do |format|
      if @form_calculation.save
        format.html { redirect_to @form_calculation, notice: 'Form calculation was successfully created.' }
        format.json { render json: @form_calculation, status: :created, location: @form_calculation }
      else
        format.html { render action: "new" }
        format.json { render json: @form_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /form_calculations/1
  # PUT /form_calculations/1.json
  def update
    @form_calculation = FormCalculation.find(params[:id])

    respond_to do |format|
      if @form_calculation.update_attributes(params[:form_calculation])
        format.html { redirect_to @form_calculation, notice: 'Form calculation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_calculations/1
  # DELETE /form_calculations/1.json
  def destroy
    @form_calculation = FormCalculation.find(params[:id])
    @form_calculation.destroy

    respond_to do |format|
      format.html { redirect_to form_calculations_url }
      format.json { head :no_content }
    end
  end
end
