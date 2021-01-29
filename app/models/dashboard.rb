class Dashboard < ApplicationRecord
  belongs_to :joana

  validates :contributions, :repos_count, numericality: { only_integer: true }

  before_validation :strip_details

  private

  def strip_details
    attributes.map do |_attr, val|
      val.strip! if val.instance_of?(String)
    end
  end
end
