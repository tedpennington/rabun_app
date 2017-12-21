require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post reviews_url, params: { review: { comment: @review.comment, people_number: @review.people_number, property_address: @review.property_address, property_city: @review.property_city, property_name: @review.property_name, property_state: @review.property_state, property_unit: @review.property_unit, property_zip: @review.property_zip, rating_checkinout: @review.rating_checkinout, rating_communication: @review.rating_communication, rating_damage: @review.rating_damage, rating_overall: @review.rating_overall, rating_payment: @review.rating_payment } }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { comment: @review.comment, people_number: @review.people_number, property_address: @review.property_address, property_city: @review.property_city, property_name: @review.property_name, property_state: @review.property_state, property_unit: @review.property_unit, property_zip: @review.property_zip, rating_checkinout: @review.rating_checkinout, rating_communication: @review.rating_communication, rating_damage: @review.rating_damage, rating_overall: @review.rating_overall, rating_payment: @review.rating_payment } }
    assert_redirected_to review_url(@review)
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
