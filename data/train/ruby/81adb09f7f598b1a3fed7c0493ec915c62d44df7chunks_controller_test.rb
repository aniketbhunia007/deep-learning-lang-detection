require 'test_helper'

class ChunksControllerTest < ActionController::TestCase
  setup do
    @chunk = chunks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chunks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chunk" do
    assert_difference('Chunk.count') do
      post :create, chunk: { style_id: @chunk.style_id }
    end

    assert_redirected_to chunk_path(assigns(:chunk))
  end

  test "should show chunk" do
    get :show, id: @chunk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chunk
    assert_response :success
  end

  test "should update chunk" do
    patch :update, id: @chunk, chunk: { style_id: @chunk.style_id }
    assert_redirected_to chunk_path(assigns(:chunk))
  end

  test "should destroy chunk" do
    assert_difference('Chunk.count', -1) do
      delete :destroy, id: @chunk
    end

    assert_redirected_to chunks_path
  end
end
