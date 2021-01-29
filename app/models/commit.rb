class Commit < ApplicationRecord
  belongs_to :repo, counter_cache: true

  validates :message, format: { with: /\A([\p{L}[-',._]])+(\s[\p{L}[-'.,_]]+)*\Z/ }
  validates :html_url, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ }

  before_validation :strip_details

  private

  def strip_details
    attributes.map do |_attr, val|
      val.strip! if val.instance_of?(String)
    end
  end
end
