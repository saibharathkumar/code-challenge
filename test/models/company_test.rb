require 'test_helper'

class CompanyTest < ActiveSupport::TestCase

  def setup
    @company = Company.new(name: "new company", zip_code: "12345")
  end

  test "should not save company with invalid email address" do
    @company.email = "abc@abc.com"
    assert_not @company.save

    @company.email = "xyz%$@getmainstreet.com"
    assert_not @company.save
  end

  test "should save company with valid email address" do
    @company.email = "abc@getmainstreet.com"
    assert @company.save

    @company.email = "xyz.+_-@getmainstreet.com"
    assert @company.save
  end

  test "should allow blank email" do
    @company.email = ""
    assert @company.save
  end


end