require 'test_helper'

class ItemInventoriesControllerTest < ActionController::TestCase
  setup do
    @item_inventory = item_inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_inventory" do
    assert_difference('ItemInventory.count') do
      post :create, :item_inventory => @item_inventory.attributes
    end

    assert_redirected_to item_inventory_path(assigns(:item_inventory))
  end

  test "should show item_inventory" do
    get :show, :id => @item_inventory.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @item_inventory.to_param
    assert_response :success
  end

  test "should update item_inventory" do
    put :update, :id => @item_inventory.to_param, :item_inventory => @item_inventory.attributes
    assert_redirected_to item_inventory_path(assigns(:item_inventory))
  end

  test "should destroy item_inventory" do
    assert_difference('ItemInventory.count', -1) do
      delete :destroy, :id => @item_inventory.to_param
    end

    assert_redirected_to item_inventories_path
  end
end
