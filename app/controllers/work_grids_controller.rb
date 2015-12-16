class WorkGridsController < ApplicationController
  before_action :set_work_grid, only: [:show, :edit, :update, :destroy]

  # GET /work_grids
  # GET /work_grids.json
  def index
    @work_grids = WorkGrid.all
  end

  # GET /work_grids/1
  # GET /work_grids/1.json
  def show
  end

  # GET /work_grids/new
  def new
    @work_grid = WorkGrid.new
  end

  # GET /work_grids/1/edit
  def edit
  end

  # POST /work_grids
  # POST /work_grids.json
  def create
    @work_grid = WorkGrid.new(work_grid_params)

    respond_to do |format|
      if @work_grid.save
        format.html { redirect_to @work_grid, notice: 'Work grid was successfully created.' }
        format.json { render :show, status: :created, location: @work_grid }
      else
        format.html { render :new }
        format.json { render json: @work_grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_grids/1
  # PATCH/PUT /work_grids/1.json
  def update
    respond_to do |format|
      if @work_grid.update(work_grid_params)
        format.html { redirect_to @work_grid, notice: 'Work grid was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_grid }
      else
        format.html { render :edit }
        format.json { render json: @work_grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_grids/1
  # DELETE /work_grids/1.json
  def destroy
    @work_grid.destroy
    respond_to do |format|
      format.html { redirect_to work_grids_url, notice: 'Work grid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_grid
      @work_grid = WorkGrid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_grid_params
      params.require(:work_grid).permit(:work_day_id, :slot_id)
    end
end
