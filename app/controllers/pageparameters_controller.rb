class PageparametersController < ApplicationController
  before_action :set_pageparameter, only: [:show, :edit, :update, :destroy]

  # GET /pageparameters
  # GET /pageparameters.json
  def index
    @pageparameters = Pageparameter.all
  end

  # GET /pageparameters/1
  # GET /pageparameters/1.json
  def show
  end

  # GET /pageparameters/new
  def new
    @pageparameter = Pageparameter.new
  end

  # GET /pageparameters/1/edit
  def edit
  end

  # POST /pageparameters
  # POST /pageparameters.json
  def create
    @pageparameter = Pageparameter.new(pageparameter_params)

    respond_to do |format|
      if @pageparameter.save
        format.html { redirect_to @pageparameter, notice: 'Pageparameter was successfully created.' }
        format.json { render :show, status: :created, location: @pageparameter }
      else
        format.html { render :new }
        format.json { render json: @pageparameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pageparameters/1
  # PATCH/PUT /pageparameters/1.json
  def update
    respond_to do |format|
      if @pageparameter.update(pageparameter_params)
        format.html { redirect_to @pageparameter, notice: 'Pageparameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @pageparameter }
      else
        format.html { render :edit }
        format.json { render json: @pageparameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pageparameters/1
  # DELETE /pageparameters/1.json
  def destroy
    @pageparameter.destroy
    respond_to do |format|
      format.html { redirect_to pageparameters_url, notice: 'Pageparameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pageparameter
      @pageparameter = Pageparameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pageparameter_params
      params.require(:pageparameter).permit(:title, :notice)
    end
end
