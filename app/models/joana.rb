class Joana < ApplicationRecord
  slug :set_slug

  has_many :repos, dependent: :destroy

  validates :name, :username, :location, :bio, format: { with: /\A([\p{L}[-']])+(\s[\p{L}[-']]+)*\Z/ }

  def get_initials(name)
    name_arr = name.split(' ').take(2)
    name_arr.map! { |n| n.chars.first }.join
  end

  def to_param
    slug
  end

  private

  def set_slug
    self.slug = bio.parameterize
  end
end
