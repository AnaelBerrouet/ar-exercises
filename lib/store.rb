class Store < ActiveRecord::Base
  has_many :employees

  validates :name,
    length: { minimum: 3 }
  validates :annual_revenue,
    numericality: { only_integer: true, greater_than_or_equal_to: 0}

  before_destroy :check_empty

  private
    def check_empty
      if :employees.size > 0 && annual_revenue > 0
        throw :abort
      end
    end
end
