class Book < ActiveRecord::Base
  attr_accessible :number_of_pages, :price, :title
  

  validates :title,
            :presence => true,
            :uniqueness => true,
            :length => { :within => 2..255 }

  validates :price,
            :presence => true,
            :numericality => { :greater_than => 0 }
end
