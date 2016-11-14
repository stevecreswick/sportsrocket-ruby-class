require 'test_helper'

class StoryTellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story_teller = story_tellers(:one)
  end

  test "should get index" do
    get story_tellers_url
    assert_response :success
  end

  test "should get new" do
    get new_story_teller_url
    assert_response :success
  end

  test "should create story_teller" do
    assert_difference('StoryTeller.count') do
      post story_tellers_url, params: { story_teller: { description: @story_teller.description, name: @story_teller.name } }
    end

    assert_redirected_to story_teller_url(StoryTeller.last)
  end

  test "should show story_teller" do
    get story_teller_url(@story_teller)
    assert_response :success
  end

  test "should get edit" do
    get edit_story_teller_url(@story_teller)
    assert_response :success
  end

  test "should update story_teller" do
    patch story_teller_url(@story_teller), params: { story_teller: { description: @story_teller.description, name: @story_teller.name } }
    assert_redirected_to story_teller_url(@story_teller)
  end

  test "should destroy story_teller" do
    assert_difference('StoryTeller.count', -1) do
      delete story_teller_url(@story_teller)
    end

    assert_redirected_to story_tellers_url
  end
end
