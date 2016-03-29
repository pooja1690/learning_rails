class HallDetailsController < ApplicationController
  before_action :set_hall_detail, only: [:show, :edit, :update, :destroy]

  # GET /hall_details
  # GET /hall_details.json
  def index
    @hall_details = HallDetail.all
  end

  # GET /hall_details/1
  # GET /hall_details/1.json
  def show
  end

  # GET /hall_details/new
  def new
    @hall_detail = HallDetail.new
  end

  # GET /hall_details/1/edit
  def edit
  end

  # POST /hall_details
  # POST /hall_details.json
  def create
    @hall_detail = HallDetail.new(hall_detail_params)

    respond_to do |format|
      if @hall_detail.save
        format.html { redirect_to @hall_detail, notice: 'Hall detail was successfully created.' }
        format.json { render :show, status: :created, location: @hall_detail }
      else
        format.html { render :new }
        format.json { render json: @hall_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hall_details/1
  # PATCH/PUT /hall_details/1.json
  def update
    respond_to do |format|
      if @hall_detail.update(hall_detail_params)
        format.html { redirect_to @hall_detail, notice: 'Hall detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @hall_detail }
      else
        format.html { render :edit }
        format.json { render json: @hall_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hall_details/1
  # DELETE /hall_details/1.json
  def destroy
    @hall_detail.destroy
    respond_to do |format|
      format.html { redirect_to hall_details_url, notice: 'Hall detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hall_detail
      @hall_detail = HallDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hall_detail_params
      params.require(:hall_detail).permit(:Hall_Name, :Hall_ID, :Hall_Type, :Phone_Number, :Contact_Email, :Address, :City, :State)
    end
end
