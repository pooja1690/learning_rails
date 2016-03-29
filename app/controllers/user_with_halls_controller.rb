class UserWithHallsController < ApplicationController
  before_action :set_user_with_hall, only: [:show, :edit, :update, :destroy]

  # GET /user_with_halls
  # GET /user_with_halls.json
  def index
    @user_with_halls = UserWithHall.all
  end

  # GET /user_with_halls/1
  # GET /user_with_halls/1.json
  def show
  end

  # GET /user_with_halls/new
  def new
    @user_with_hall = UserWithHall.new
  end

  # GET /user_with_halls/1/edit
  def edit
  end

  # POST /user_with_halls
  # POST /user_with_halls.json
  def create
    @user_with_hall = UserWithHall.new(user_with_hall_params)

    respond_to do |format|
      if @user_with_hall.save
        format.html { redirect_to @user_with_hall, notice: 'User with hall was successfully created.' }
        format.json { render :show, status: :created, location: @user_with_hall }
      else
        format.html { render :new }
        format.json { render json: @user_with_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_with_halls/1
  # PATCH/PUT /user_with_halls/1.json
  def update
    respond_to do |format|
      if @user_with_hall.update(user_with_hall_params)
        format.html { redirect_to @user_with_hall, notice: 'User with hall was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_with_hall }
      else
        format.html { render :edit }
        format.json { render json: @user_with_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_with_halls/1
  # DELETE /user_with_halls/1.json
  def destroy
    @user_with_hall.destroy
    respond_to do |format|
      format.html { redirect_to user_with_halls_url, notice: 'User with hall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_with_hall
      @user_with_hall = UserWithHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_with_hall_params
      params.require(:user_with_hall).permit(:email, :Hall_ID)
    end
end
