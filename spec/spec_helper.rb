require 'action_mailer'
require 'action_mailer_cache_delivery'

ActionMailerCacheDelivery.install
ActionMailer::Base.send(:include, ActionMailerCacheDelivery)
# ActionMailer::Base.template_root = File.dirname(__FILE__) + '/mail_templates'

class Mailer < ActionMailer::Base

  def testmail
    p inspect
    mail from: 'from@test.com', to: 'to@test.com', subject: 'Test email'
  end

end # Mailer
