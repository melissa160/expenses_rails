require 'rails_helper'

# test suite for the category model
RSpec.describe Category, type: :model do
  # association test
  # ensure an category belongs to a single expense record
  it {should have_many(:expenses)}

  # validation test
  # ensure column name is present before saving
  it {should validate_presence_of(:name)}
end
