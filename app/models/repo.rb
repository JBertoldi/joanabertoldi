class Repo < ApplicationRecord
  belongs_to :joana
  has_many :commits, dependent: :destroy

  validates :name, format: { with: /\A([\p{L}[-']])+(\s[\p{L}[-']]+)*\Z/ }
  validates :html_url, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ }

  before_validation :strip_details

  private

  def strip_details
    attributes.map do |_attr, val|
      val.strip! if val.instance_of?(String)
    end
  end
end
