require 'test_helper'

class DigitalFingerprintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @digital_fingerprint = digital_fingerprints(:one)
  end

  test "should get index" do
    get digital_fingerprints_url
    assert_response :success
  end

  test "should create digital_fingerprint" do
    assert_difference('DigitalFingerprint.count') do
      post digital_fingerprints_url, params: { digital_fingerprint: { action: @digital_fingerprint.action, fingerprint: @digital_fingerprint.fingerprint, ua: @digital_fingerprint.ua } }
    end

    assert_response 201
  end

  test "should show digital_fingerprint" do
    get digital_fingerprint_url(@digital_fingerprint)
    assert_response :success
  end

  test "should update digital_fingerprint" do
    patch digital_fingerprint_url(@digital_fingerprint), params: { digital_fingerprint: { action: @digital_fingerprint.action, fingerprint: @digital_fingerprint.fingerprint, ua: @digital_fingerprint.ua } }
    assert_response 200
  end

  test "should destroy digital_fingerprint" do
    assert_difference('DigitalFingerprint.count', -1) do
      delete digital_fingerprint_url(@digital_fingerprint)
    end

    assert_response 204
  end
end
