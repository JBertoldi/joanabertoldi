class Joana < ApplicationRecord
  has_one :dashboard
  has_many :repos

  validates :name, :username, :location, :bio, format: { with: /\A([\p{L}[-']])+(\s[\p{L}[-']]+)*\Z/ }

  before_validation :strip_details

  private

  def strip_details
    attributes.map do |_attr, val|
      val.strip! if val.instance_of?(String)
    end
  end
end
