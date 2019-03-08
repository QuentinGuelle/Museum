class RblackandwhitesController < ApplicationController
  before_action :set_rblackandwhite, only: [:show, :edit, :update, :destroy]

  # GET /rblackandwhites
  # GET /rblackandwhites.json
  def index
    @rblackandwhites = Rblackandwhite.all
  end

  # GET /rblackandwhites/1
  # GET /rblackandwhites/1.json
  def show
  end

  # GET /rblackandwhites/new
  def new
    @rblackandwhite = Rblackandwhite.new
  end

  # GET /rblackandwhites/1/edit
  def edit
  end

  # POST /rblackandwhites
  # POST /rblackandwhites.json
  def create
    @rblackandwhite = Rblackandwhite.new(rblackandwhite_params)

    respond_to do |format|
      if @rblackandwhite.save
        format.html { redirect_to @rblackandwhite, notice: 'Rblackandwhite was successfully created.' }
        format.json { render :show, status: :created, location: @rblackandwhite }
      else
        format.html { render :new }
        format.json { render json: @rblackandwhite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rblackandwhites/1
  # PATCH/PUT /rblackandwhites/1.json
  def update
    respond_to do |format|
      if @rblackandwhite.update(rblackandwhite_params)
        format.html { redirect_to @rblackandwhite, notice: 'Rblackandwhite was successfully updated.' }
        format.json { render :show, status: :ok, location: @rblackandwhite }
      else
        format.html { render :edit }
        format.json { render json: @rblackandwhite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rblackandwhites/1
  # DELETE /rblackandwhites/1.json
  def destroy
    @rblackandwhite.destroy
    respond_to do |format|
      format.html { redirect_to rblackandwhites_url, notice: 'Rblackandwhite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rblackandwhite
      @rblackandwhite = Rblackandwhite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rblackandwhite_params
      params.require(:rblackandwhite).permit(:description, :link, :location)
    end
end
