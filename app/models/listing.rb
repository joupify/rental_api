class Listing < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :missions, dependent: :destroy
  has_one :last_checkout_mission, class_name: 'Mission', dependent: :destroy
  has_one :checkout_checkin_mission, class_name: 'Mission', dependent: :destroy

end
