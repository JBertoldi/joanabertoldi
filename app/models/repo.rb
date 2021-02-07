class Repo < ApplicationRecord
  slug :name

  belongs_to :joana, counter_cache: true
  has_many :commits, dependent: :destroy
  has_and_belongs_to_many :technologies

  validates :name, format: { with: /\A([\p{L}-])+(\s[\p{L}-]+)*\Z/ }
  validates :html_url, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ }

  scope :commit_ordered, -> { order(commits_count: :desc) }

  def format_name(name)
    name_arr = name.split('-')
    name_arr.map(&:capitalize).join(' ').gsub('And', '&')
  end

  def to_param
    slug
  end

  def collaborative?
    collaborators_count != 1
  end
end
