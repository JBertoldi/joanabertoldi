require 'test_helper'

class CommitTest < ActiveSupport::TestCase
  def setup
    @commit1 = Commit.new(
      message: ' Add something to commits_controller. Minor style changes.  ',
      html_url: '  https://github.com/JBertoldi/fit-food/commit/913b3739fed00083d80b3141bb694f7dc6380129',
      repo_id: 1
    )

    @commit2 = Commit.new(
      message: 'Add commit',
      html_url: 'https://github.com/JBertol  di/fit-food/commit/913b3739fed00083d80b3141bb4f7dc6380129',
      repo_id: 1
    )
  end

  test 'commit1 should be valid' do
    assert @commit1.valid?
  end

  test 'commit2 should be invalid' do
    assert_not @commit2.valid?
  end
end
