class ApplicationMailer < ActionMailer::Base
  default from: "alexandramaecoleman@gmail.com"
  layout 'mailer'
end
 
# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end
