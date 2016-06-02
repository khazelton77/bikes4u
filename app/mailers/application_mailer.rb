class ApplicationMailer < ActionMailer::Base
  default from: "keri.hazelton@hotmail.com"
  layout 'mailer'
end

ActionMailer::Base.mail(:from => 'keri.hazelton@hotmail.com', :to => 'to@domain.com', :subject => "Welcomd to my awesome site!", :body => 'I am the email body.').deliver_now