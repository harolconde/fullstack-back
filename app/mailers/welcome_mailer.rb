class WelcomeMailer < ApplicationMailer
	default from: 'civipoints@gmail.com'
	def welcome_mailer
		@usuario = params[:name]
		puts "<-------------------------------Usuario>>>>>>>>>>>>>>>>>>>>>>>>"
		puts @usuario.email
		mail(to: @usuario.email, subject: 'Bienvenido a CiviPoints')
	end
end
