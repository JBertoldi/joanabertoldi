class Commit < ApplicationRecord
  belongs_to :repo, counter_cache: true

  validates :html_url, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ }
end
