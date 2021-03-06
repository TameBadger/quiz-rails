require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language = languages(:one)
  end

  test "should get index" do
    get languages_url
    assert_response :success
  end

  test "should create language" do
    assert_difference('Language.count') do
      post languages_url, params: { language: { description: @language.description, option: @language.option, short: @language.short, title: @language.title } }
    end

    assert_response 201
  end

  test "should show language" do
    get language_url(@language)
    assert_response :success
  end

  test "should update language" do
    patch language_url(@language), params: { language: { description: @language.description, option: @language.option, short: @language.short, title: @language.title } }
    assert_response 200
  end

  test "should destroy language" do
    assert_difference('Language.count', -1) do
      delete language_url(@language)
    end

    assert_response 204
  end
end
