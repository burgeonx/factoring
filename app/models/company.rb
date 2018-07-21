class Company < ApplicationRecord
  belongs_to :user
  
  validates :company_name, presence: true
  validates :amount, presence: true
  validates :company_address, presence: true
  validates :company_city, presence: true
  validates :company_state, presence: true
  validates :company_zip, presence: true
  validates :tax_id, presence: true
  validates :entity_type, presence: true
  validates :annual_revenue, presence: true
  validates :financing_time, presence: true
end
