class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :type

  validates_presence_of :expensedate, :concept, :amount
end
