require 'test_helper'

class JoanaTest < ActiveSupport::TestCase
  def setup
    @joana = Joana.new(
      name: '  Joana',
      username: 'JBertoldi   ',
      location: 'Sintra ',
      bio: 'Coffee is life '
    )

    @joana.save!
  end

  test 'joana should be valid' do
    assert @joana.valid?
  end
end
