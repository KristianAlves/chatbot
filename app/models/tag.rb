class Tag < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :company
end