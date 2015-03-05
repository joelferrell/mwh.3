require 'test_helper'

class WorkOrdersControllerTest < ActionController::TestCase
  setup do
    @work_order = work_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_order" do
    assert_difference('WorkOrder.count') do
      post :create, work_order: { comp_date: @work_order.comp_date, equipment_id: @work_order.equipment_id, est_completion: @work_order.est_completion, location: @work_order.location, percent_complete: @work_order.percent_complete, priority: @work_order.priority, repair_facility: @work_order.repair_facility, repair_type: @work_order.repair_type, requestor: @work_order.requestor, start_date: @work_order.start_date, summary: @work_order.summary, wo_number: @work_order.wo_number }
    end

    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should show work_order" do
    get :show, id: @work_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_order
    assert_response :success
  end

  test "should update work_order" do
    patch :update, id: @work_order, work_order: { comp_date: @work_order.comp_date, equipment_id: @work_order.equipment_id, est_completion: @work_order.est_completion, location: @work_order.location, percent_complete: @work_order.percent_complete, priority: @work_order.priority, repair_facility: @work_order.repair_facility, repair_type: @work_order.repair_type, requestor: @work_order.requestor, start_date: @work_order.start_date, summary: @work_order.summary, wo_number: @work_order.wo_number }
    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should destroy work_order" do
    assert_difference('WorkOrder.count', -1) do
      delete :destroy, id: @work_order
    end

    assert_redirected_to work_orders_path
  end
end
