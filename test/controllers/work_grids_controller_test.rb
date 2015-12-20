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

  test "should show work_grid" do
    get :show, id: @work_grid
    assert_response :success
  end

  test "should destroy work_grid" do
    assert_difference('WorkGrid.count', -1) do
      delete :destroy, id: @work_grid
    end

    assert_redirected_to work_grids_path
  end
end
