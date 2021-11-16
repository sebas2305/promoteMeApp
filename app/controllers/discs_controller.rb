class DiscsController < ApplicationController
  before_action :set_disc, only: %i[ show edit update destroy ]

  # GET /discs or /discs.json
  def index
    @discs = Disc.all
  end

  # GET /discs/1 or /discs/1.json
  def show
  end

  # GET /discs/new
  def new
    @disc = Disc.new
  end

  # GET /discs/1/edit
  def edit
  end

  # POST /discs or /discs.json
  def create
    @disc = Disc.new(disc_params)

    respond_to do |format|
      if @disc.save
        format.html { redirect_to @disc, notice: "Disc was successfully created." }
        format.json { render :show, status: :created, location: @disc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discs/1 or /discs/1.json
  def update
    respond_to do |format|
      if @disc.update(disc_params)
        format.html { redirect_to @disc, notice: "Disc was successfully updated." }
        format.json { render :show, status: :ok, location: @disc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discs/1 or /discs/1.json
  def destroy
    @disc.destroy
    respond_to do |format|
      format.html { redirect_to discs_url, notice: "Disc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disc
      @disc = Disc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disc_params
      params.require(:disc).permit(:user_id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18, :q19, :q20, :q21, :q22, :q23, :q24, :q25, :q26, :q27, :q28, :q1n, :q2n, :q3n, :q4n, :q5n, :q6n, :q7n, :q8n, :q9n, :q10n, :q11n, :q12n, :q13n, :q14n, :q15n, :q16n, :q17n, :q18n, :q19n, :q20n, :q21n, :q22n, :q23n, :q24n, :q25n, :q26n, :q27n, :q28n)
    end
end
