class Guest < ActiveRecord::Base

  has_many :secondary_address

  has_one :primary_address

  # belongs_to :parent, :class_name => 'Guest'
  # has_many :children, :class_name => 'Guest', :foreign_key => 'parent_id'

end