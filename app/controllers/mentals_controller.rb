class MentalsController < ApplicationController
  before_action :set_mental, only: %i[ show edit update destroy ]

  # GET /mentals or /mentals.json
  def index
    @mentals = Mental.all
  end

  # GET /mentals/1 or /mentals/1.json
  def show
  end

  # GET /mentals/new
  def new
    @mental = Mental.new
  end

  # GET /mentals/1/edit
  def edit
  end

  # POST /mentals or /mentals.json
  def create
    @mental = Mental.new(mental_params)

    respond_to do |format|
      if @mental.save
        format.html { redirect_to @mental, notice: "Mental was successfully created." }
        format.json { render :show, status: :created, location: @mental }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentals/1 or /mentals/1.json
  def update
    respond_to do |format|
      if @mental.update(mental_params)
        format.html { redirect_to @mental, notice: "Mental was successfully updated." }
        format.json { render :show, status: :ok, location: @mental }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentals/1 or /mentals/1.json
  def destroy
    @mental.destroy
    respond_to do |format|
      format.html { redirect_to mentals_url, notice: "Mental was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mental
      @mental = Mental.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mental_params
      params.require(:mental).permit(:user_id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18, :q19, :q20, :q21, :q22, :q23, :q24)
    end
end
