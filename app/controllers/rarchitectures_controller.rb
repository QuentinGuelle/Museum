class RarchitecturesController < ApplicationController
  before_action :set_rarchitecture, only: [:show, :edit, :update, :destroy]

  # GET /rarchitectures
  # GET /rarchitectures.json
  def index
    @rarchitectures = Rarchitecture.all
  end

  # GET /rarchitectures/1
  # GET /rarchitectures/1.json
  def show
  end

  # GET /rarchitectures/new
  def new
    @rarchitecture = Rarchitecture.new
  end

  # GET /rarchitectures/1/edit
  def edit
  end

  # POST /rarchitectures
  # POST /rarchitectures.json
  def create
    @rarchitecture = Rarchitecture.new(rarchitecture_params)

    respond_to do |format|
      if @rarchitecture.save
        format.html { redirect_to @rarchitecture, notice: 'Rarchitecture was successfully created.' }
        format.json { render :show, status: :created, location: @rarchitecture }
      else
        format.html { render :new }
        format.json { render json: @rarchitecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rarchitectures/1
  # PATCH/PUT /rarchitectures/1.json
  def update
    respond_to do |format|
      if @rarchitecture.update(rarchitecture_params)
        format.html { redirect_to @rarchitecture, notice: 'Rarchitecture was successfully updated.' }
        format.json { render :show, status: :ok, location: @rarchitecture }
      else
        format.html { render :edit }
        format.json { render json: @rarchitecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rarchitectures/1
  # DELETE /rarchitectures/1.json
  def destroy
    @rarchitecture.destroy
    respond_to do |format|
      format.html { redirect_to rarchitectures_url, notice: 'Rarchitecture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rarchitecture
      @rarchitecture = Rarchitecture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rarchitecture_params
      params.require(:rarchitecture).permit(:description, :link, :location)
    end
end
