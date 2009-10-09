class Notifier < ActionMailer::Base
  

  def todo_notification(user)
    subject    'You have a new ToDo'
    recipients user.email
    from       'cetapps@gmail.edu'
    sent_on    Time.now    
    body       :user => user
  end
end
