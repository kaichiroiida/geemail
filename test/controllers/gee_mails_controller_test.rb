require 'test_helper'

class GeeMailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gee_mail = gee_mails(:one)
  end

  test "should get index" do
    get gee_mails_url
    assert_response :success
  end

  test "should get new" do
    get new_gee_mail_url
    assert_response :success
  end

  test "should create gee_mail" do
    assert_difference('GeeMail.count') do
      post gee_mails_url, params: { gee_mail: { date: @gee_mail.date, subject: @gee_mail.subject, text: @gee_mail.text, to: @gee_mail.to } }
    end

    assert_redirected_to gee_mail_url(GeeMail.last)
  end

  test "should show gee_mail" do
    get gee_mail_url(@gee_mail)
    assert_response :success
  end

  test "should get edit" do
    get edit_gee_mail_url(@gee_mail)
    assert_response :success
  end

  test "should update gee_mail" do
    patch gee_mail_url(@gee_mail), params: { gee_mail: { date: @gee_mail.date, subject: @gee_mail.subject, text: @gee_mail.text, to: @gee_mail.to } }
    assert_redirected_to gee_mail_url(@gee_mail)
  end

  test "should destroy gee_mail" do
    assert_difference('GeeMail.count', -1) do
      delete gee_mail_url(@gee_mail)
    end

    assert_redirected_to gee_mails_url
  end
end
