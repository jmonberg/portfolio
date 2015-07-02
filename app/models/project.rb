class Project < ActiveRecord::Base
  belongs_to :category
  validates :name, :presence => true
  validates :description, :presence => true
  validates :github, :presence => true
end
