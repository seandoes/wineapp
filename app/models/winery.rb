class Winery < ActiveRecord::Base
  attr_accessible :location, :name
  validates :name, :presence => true
  has_many :wines, :dependent => :destroy
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
end
