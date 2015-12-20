class WorkGridsController < ApplicationController
  before_action :set_work_grid, only: [:show, :destroy]

  # GET /work_grids
  # GET /work_grids.json
  def index
    @work_grids = WorkGrid.all
  end

  # GET /work_grids/1
  # GET /work_grids/1.json
  def show
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
