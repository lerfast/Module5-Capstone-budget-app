class FinancialTransaction < ApplicationRecord
 
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :group


  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
