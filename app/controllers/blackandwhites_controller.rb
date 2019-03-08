class BlackandwhitesController < ApplicationController
  before_action :set_blackandwhite, only: [:show, :edit, :update, :destroy]

  # GET /blackandwhites
  # GET /blackandwhites.json
  def index
    @blackandwhites = Blackandwhite.all
  end

  # GET /blackandwhites/1
  # GET /blackandwhites/1.json
  def show
  end

  # GET /blackandwhites/new
  def new
    @blackandwhite = Blackandwhite.new
  end

  # GET /blackandwhites/1/edit
  def edit
  end

  # POST /blackandwhites
  # POST /blackandwhites.json
  def create
    @blackandwhite = Blackandwhite.new(blackandwhite_params)

    respond_to do |format|
      if @blackandwhite.save
        format.html { redirect_to @blackandwhite, notice: 'Blackandwhite was successfully created.' }
        format.json { render :show, status: :created, location: @blackandwhite }
      else
        format.html { render :new }
        format.json { render json: @blackandwhite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blackandwhites/1
  # PATCH/PUT /blackandwhites/1.json
  def update
    respond_to do |format|
      if @blackandwhite.update(blackandwhite_params)
        format.html { redirect_to @blackandwhite, notice: 'Blackandwhite was successfully updated.' }
        format.json { render :show, status: :ok, location: @blackandwhite }
      else
        format.html { render :edit }
        format.json { render json: @blackandwhite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blackandwhites/1
  # DELETE /blackandwhites/1.json
  def destroy
    @blackandwhite.destroy
    respond_to do |format|
      format.html { redirect_to blackandwhites_url, notice: 'Blackandwhite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blackandwhite
      @blackandwhite = Blackandwhite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blackandwhite_params
      params.fetch(:blackandwhite, {})
    end
end
