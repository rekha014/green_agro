class ContactMailer < ApplicationMailer
  #default from: "noreply@greenagrobiotech.com"
 
  default to: "riseagroinfra@gmail.com"

  def new_message(message)
  	#debugger
    @name = message.name
    @email =  message.email
    @subject = message.subject
    @msg = message.message

    mail( :email => @email, :name => @name, :subject => @subject, :message    =>  @msg )




  end

end
