class Property < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true

  enum category: {mansion: 1, apartment: 2, house: 3}
  enum room_category: {one_room: 1, one_k: 2, one_dk: 3, one_ldk: 4, two_k: 5, two_dk: 6, two_ldk: 7, over: 8}
end
