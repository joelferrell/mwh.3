class Equipment < ActiveRecord::Base
  has_many :work_orders
  has_many :parts
end
