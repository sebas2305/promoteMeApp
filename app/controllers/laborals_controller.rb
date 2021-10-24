class LaboralsController < ApplicationController
  before_action :set_laboral, only: %i[ show edit update destroy ]

  # GET /laborals or /laborals.json
  def index
    @laborals = Laboral.all
  end

  # GET /laborals/1 or /laborals/1.json
  def show
  end

  # GET /laborals/new
  def new
    @laboral = Laboral.new
  end

  # GET /laborals/1/edit
  def edit
  end

  # POST /laborals or /laborals.json
  def create
    @laboral = Laboral.new(laboral_params)

    respond_to do |format|
      if @laboral.save
        format.html { redirect_to @laboral, notice: "Laboral was successfully created." }
        format.json { render :show, status: :created, location: @laboral }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laborals/1 or /laborals/1.json
  def update
    respond_to do |format|
      if @laboral.update(laboral_params)
        format.html { redirect_to @laboral, notice: "Laboral was successfully updated." }
        format.json { render :show, status: :ok, location: @laboral }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laborals/1 or /laborals/1.json
  def destroy
    @laboral.destroy
    respond_to do |format|
      format.html { redirect_to laborals_url, notice: "Laboral was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboral
      @laboral = Laboral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laboral_params
      params.require(:laboral).permit(:user_id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12)
    end
end
