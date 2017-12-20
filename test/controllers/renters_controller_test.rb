require 'test_helper'

class RentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renter = renters(:one)
  end

  test "should get index" do
    get renters_url
    assert_response :success
  end

  test "should get new" do
    get new_renter_url
    assert_response :success
  end

  test "should create renter" do
    assert_difference('Renter.count') do
      post renters_url, params: { renter: { airbnb_url: @renter.airbnb_url, aka: @renter.aka, city: @renter.city, email: @renter.email, facebook_url: @renter.facebook_url, first_name: @renter.first_name, last_name: @renter.last_name, linkedin_url: @renter.linkedin_url, misc: @renter.misc, mobile_phone: @renter.mobile_phone, phone_number: @renter.phone_number, state: @renter.state, street_address: @renter.street_address, vrbo_url: @renter.vrbo_url, zip: @renter.zip } }
    end

    assert_redirected_to renter_url(Renter.last)
  end

  test "should show renter" do
    get renter_url(@renter)
    assert_response :success
  end

  test "should get edit" do
    get edit_renter_url(@renter)
    assert_response :success
  end

  test "should update renter" do
    patch renter_url(@renter), params: { renter: { airbnb_url: @renter.airbnb_url, aka: @renter.aka, city: @renter.city, email: @renter.email, facebook_url: @renter.facebook_url, first_name: @renter.first_name, last_name: @renter.last_name, linkedin_url: @renter.linkedin_url, misc: @renter.misc, mobile_phone: @renter.mobile_phone, phone_number: @renter.phone_number, state: @renter.state, street_address: @renter.street_address, vrbo_url: @renter.vrbo_url, zip: @renter.zip } }
    assert_redirected_to renter_url(@renter)
  end

  test "should destroy renter" do
    assert_difference('Renter.count', -1) do
      delete renter_url(@renter)
    end

    assert_redirected_to renters_url
  end
end
