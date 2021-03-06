require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name,
    presence: true
  validates :last_name,
    presence: true
  validates :hourly_rate,
    presence: true,
    numericality: { only_integer: true, greater_than: 40, less_than: 200}
  validates :store_id,
    presence: true

  before_create do
    self.password = SecureRandom.base64(8)
  end
end
