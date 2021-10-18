class EnviromentsController < ApplicationController
  before_action :set_enviroment, only: %i[ show edit update destroy ]

  # GET /enviroments or /enviroments.json
  def index
    @enviroments = Enviroment.all
  end

  # GET /enviroments/1 or /enviroments/1.json
  def show
  end

  # GET /enviroments/new
  def new
    @enviroment = Enviroment.new
  end

  # GET /enviroments/1/edit
  def edit
  end

  # POST /enviroments or /enviroments.json
  def create
    @enviroment = Enviroment.new(enviroment_params)

    respond_to do |format|
      if @enviroment.save
        format.html { redirect_to @enviroment, notice: "Enviroment was successfully created." }
        format.json { render :show, status: :created, location: @enviroment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enviroment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enviroments/1 or /enviroments/1.json
  def update
    respond_to do |format|
      if @enviroment.update(enviroment_params)
        format.html { redirect_to @enviroment, notice: "Enviroment was successfully updated." }
        format.json { render :show, status: :ok, location: @enviroment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enviroment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enviroments/1 or /enviroments/1.json
  def destroy
    @enviroment.destroy
    respond_to do |format|
      format.html { redirect_to enviroments_url, notice: "Enviroment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enviroment
      @enviroment = Enviroment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enviroment_params
      params.require(:enviroment).permit(:user_id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18, :q19, :q20, :q21, :q22, :q23)
    end
end
