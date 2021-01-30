class Commit < ApplicationRecord
  belongs_to :repo, counter_cache: true

  validates :html_url, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ }

  before_save :strip_details

  private

  def strip_details
    attributes.map do |_attr, val|
      val.strip! if val.instance_of?(String)
    end
  end
end
