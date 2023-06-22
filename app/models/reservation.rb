class Reservation < ApplicationRecord
  belongs_to :listing
  has_one :mission, -> { where(mission_type: 'checkout_checkin') }, dependent: :destroy
  has_one :last_checkout_mission, class_name: 'Mission', dependent: :destroy
  has_one :checkout_checkin_mission, class_name: 'Mission', dependent: :destroy
end
