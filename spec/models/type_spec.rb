require 'rails_helper'

RSpec.describe Type, type: :model do
  # association test
  # validates type belongs to expense record
  it {should have_many(:expenses)}

  # validation test
  # ensure name field is present
  it {should validate_presence_of(:name)}
end