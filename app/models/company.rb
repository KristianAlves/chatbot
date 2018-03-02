class Company < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :faqs
  has_many :links
  has_many :hashtags
  has_many :tags
end