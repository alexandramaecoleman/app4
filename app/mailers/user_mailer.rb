class UserMailer < ApplicationMailer
  default from: "hello@maecoleman.herokuapp.com "

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'alexandramaecoleman@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Mae Shop"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end
  
end