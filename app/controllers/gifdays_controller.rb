class GifdaysController < ApplicationController
  before_action :set_gifday, only: [:show, :edit, :update, :destroy]

  # GET /gifdays
  # GET /gifdays.json
  def index
    @gifdays = Gifday.all
  end

  # GET /gifdays/1
  # GET /gifdays/1.json
  def show
  end

  # GET /gifdays/new
  def new
    @gifday = Gifday.new
  end

  # GET /gifdays/1/edit
  def edit
  end

  # POST /gifdays
  # POST /gifdays.json
  def create
    @gifday = Gifday.new(gifday_params)

    respond_to do |format|
      if @gifday.save
        format.html { redirect_to @gifday, notice: 'Gifday was successfully created.' }
        format.json { render :show, status: :created, location: @gifday }
      else
        format.html { render :new }
        format.json { render json: @gifday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gifdays/1
  # PATCH/PUT /gifdays/1.json
  def update
    respond_to do |format|
      if @gifday.update(gifday_params)
        format.html { redirect_to @gifday, notice: 'Gifday was successfully updated.' }
        format.json { render :show, status: :ok, location: @gifday }
      else
        format.html { render :edit }
        format.json { render json: @gifday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gifdays/1
  # DELETE /gifdays/1.json
  def destroy
    @gifday.destroy
    respond_to do |format|
      format.html { redirect_to gifdays_url, notice: 'Gifday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gifday
      @gifday = Gifday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gifday_params
      params.require(:gifday).permit(:title, :body, :daynumber, :companyname)
    end
end
