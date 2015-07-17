class Reference < ActiveRecord::Base
  validates :body, :presence => true
  validates :name, :presence => true
end
