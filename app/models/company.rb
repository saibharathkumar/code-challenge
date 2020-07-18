class Company < ApplicationRecord
  has_rich_text :description

  validates_format_of :email,
    :with => /\A[A-Za-z0-9+_.-]+@getmainstreet\.com\z/i,
    :allow_blank => true,
    :message => "address should have '@getmainstreet.com' as domain. eg: abc@getmainstreet.com"
    # we may need to add uniqueness on email, if it is required.

end
