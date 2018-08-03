class Place < ApplicationRecord
  has_many :events
  has_many :place_comments
end
