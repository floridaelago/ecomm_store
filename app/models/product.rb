class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :stock_no
end
