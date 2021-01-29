require 'test_helper'

class RepoTest < ActiveSupport::TestCase
  def setup
    @repo1 = Repo.new(name: '  Fit Food',
                      html_url: 'https://github.com/JBertoldi/fit-food/commit/913b3739fed00083d80b3141bb694f7dc6380129',
                      joana_id: Joana.first.id)

    @repo2 = Repo.new(name: '  Fit Food',
                      html_url: 'https://github.com/JBer  toldi/fit-food/commit/913b3739fed00083d80b694f7dc6380129',
                      joana_id: Joana.first.id)
  end

  test 'repo1 should be valid' do
    assert @repo1.valid?
  end

  test 'repo2 should be invalid' do
    assert_not @repo2.valid?
  end
end
