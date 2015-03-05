class Equipment < ActiveRecord::Base
  has_many :work_orders
  has_many :parts
  has_many :mileages
end
