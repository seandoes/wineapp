class Wine < ActiveRecord::Base
  attr_accessible :description, :name, :winery_id
  validates :name, :presence => true 
  belongs_to :winery
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]


end
