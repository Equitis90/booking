class Placement < ApplicationRecord
  after_validation :check_for_address

  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments

  validates_presence_of :title, :price, :address

  private

  def check_for_address
    uri = "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyD3PRRjN1TXyhtE3M8nTf66NNWjGNrtIGA&new_forward_geocoder=true&address=#{self.address}"
    res = HTTParty.get(URI.encode(uri))
    res_json = JSON.parse(res.body)
    if res_json['status'] == 'ZERO_RESULTS'
      self.errors.add(:address, "is not valid")
      return false
    end
  end
end
