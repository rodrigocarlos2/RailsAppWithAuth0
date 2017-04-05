class ObrigationsController < ApplicationController
  before_action :set_obrigation, only: [:show, :edit, :update, :destroy]

  # GET /obrigations
  # GET /obrigations.json
  def index
    @obrigations = Obrigation.all
  end

  # GET /obrigations/1
  # GET /obrigations/1.json
  def show
  end

  # GET /obrigations/new
  def new
    @obrigation = Obrigation.new
  end

  # GET /obrigations/1/edit
  def edit
  end

  # POST /obrigations
  # POST /obrigations.json
  def create
    @obrigation = Obrigation.new(obrigation_params)

    respond_to do |format|
      if @obrigation.save
        format.html { redirect_to @obrigation, notice: 'Obrigation was successfully created.' }
        format.json { render :show, status: :created, location: @obrigation }
      else
        format.html { render :new }
        format.json { render json: @obrigation.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /obrigations/1
  # PATCH/PUT /obrigations/1.json
  def update
    respond_to do |format|
      if @obrigation.update(obrigation_params)
        format.html { redirect_to @obrigation, notice: 'Obrigation was successfully updated.' }
        format.json { render :show, status: :ok, location: @obrigation }
      else
        format.html { render :edit }
        format.json { render json: @obrigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obrigations/1
  # DELETE /obrigations/1.json
  def destroy
    @obrigation.destroy
    respond_to do |format|
      format.html { redirect_to obrigations_url, notice: 'Obrigation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obrigation
      @obrigation = Obrigation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obrigation_params
      params.require(:obrigation).permit(:content, :title)
    end
end
