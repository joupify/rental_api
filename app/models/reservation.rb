class Reservation < ApplicationRecord
  belongs_to :listing
  has_one :first_checkin_mission, class_name: 'Mission', dependent: :destroy
  has_one :checkout_checkin_mission, class_name: 'Mission', dependent: :destroy

  after_create :create_checkout_checkin_mission

  private

  def create_checkout_checkin_mission
    return if listing.last_checkout_mission&.date == end_date

    # Create the checkout_checkin mission
    Mission.create!(
      listing: listing,
      mission_type: 'checkout_checkin',
      date: end_date,
      price: listing.num_rooms * 10
    )
  end
end
