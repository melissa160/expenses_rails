require 'rails_helper'

RSpec.describe Expense, type: :model do
  # Association test
  # ensure Expense model has a 1:m relationship with the Category model
  it {should belong_to(:category)}
  it {should belong_to(:type)}

  # validation test
  # ensure columns date, concept and amount are present before saving
  it {should validate_presence_of(:expensedate)}
  it {should validate_presence_of(:concept)}
  it {should validate_presence_of(:amount)}
end