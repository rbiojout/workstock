require 'test_helper'

class WorkGridsControllerTest < ActionController::TestCase
  setup do
    @work_grid = work_grids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_grids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_grid" do
    assert_difference('WorkGrid.count') do
      post :create, work_grid: { slot_id: @work_grid.slot_id, work_day_id: @work_grid.work_day_id }
    end

    assert_redirected_to work_grid_path(assigns(:work_grid))
  end

  test "should show work_grid" do
    get :show, id: @work_grid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_grid
    assert_response :success
  end

  test "should update work_grid" do
    patch :update, id: @work_grid, work_grid: { slot_id: @work_grid.slot_id, work_day_id: @work_grid.work_day_id }
    assert_redirected_to work_grid_path(assigns(:work_grid))
  end

  test "should destroy work_grid" do
    assert_difference('WorkGrid.count', -1) do
      delete :destroy, id: @work_grid
    end

    assert_redirected_to work_grids_path
  end
end
