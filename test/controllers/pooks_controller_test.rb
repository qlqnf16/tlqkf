require 'test_helper'

class PooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pook = pooks(:one)
  end

  test "should get index" do
    get pooks_url
    assert_response :success
  end

  test "should get new" do
    get new_pook_url
    assert_response :success
  end

  test "should create pook" do
    assert_difference('Pook.count') do
      post pooks_url, params: { pook: { content: @pook.content, end: @pook.end, freez: @pook.freez, name: @pook.name, post_id: @pook.post_id, start: @pook.start } }
    end

    assert_redirected_to pook_url(Pook.last)
  end

  test "should show pook" do
    get pook_url(@pook)
    assert_response :success
  end

  test "should get edit" do
    get edit_pook_url(@pook)
    assert_response :success
  end

  test "should update pook" do
    patch pook_url(@pook), params: { pook: { content: @pook.content, end: @pook.end, freez: @pook.freez, name: @pook.name, post_id: @pook.post_id, start: @pook.start } }
    assert_redirected_to pook_url(@pook)
  end

  test "should destroy pook" do
    assert_difference('Pook.count', -1) do
      delete pook_url(@pook)
    end

    assert_redirected_to pooks_url
  end
end
