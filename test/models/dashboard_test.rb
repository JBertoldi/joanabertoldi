require 'test_helper'

class DashboardTest < ActiveSupport::TestCase
  def setup
    @dashboard1 = Dashboard.new(contributions: 50,
                                repos_count: 12,
                                joana_id: Joana.first.id)
    @dashboard2 = Dashboard.new(contributions: '12',
                                repos_count: '12d',
                                joana_id: Joana.first.id)
  end

  test 'dashboard1 should be valid' do
    assert @dashboard1.valid?
  end

  test 'dashboard2 should be invalid' do
    assert_not @dashboard2.valid?
  end
end
