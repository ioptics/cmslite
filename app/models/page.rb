class Page < ActiveRecord::Base
  belongs_to :parent
  belongs_to :created_by, :class_name => 'Admin'
  belongs_to :updated_by, :class_name => 'Admin'
  
  acts_as_polymorphic_paperclip :counter_cache => true
  
  validates_presence_of :title, :body, :slug
end
