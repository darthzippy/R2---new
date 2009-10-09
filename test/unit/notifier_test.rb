require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "todo_notification" do
    @expected.subject = 'Notifier#todo_notification'
    @expected.body    = read_fixture('todo_notification')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifier.create_todo_notification(@expected.date).encoded
  end

end
