class PlaceComment < ApplicationRecord
  belongs_to :user
  belongs_to :places
end
