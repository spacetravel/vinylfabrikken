class UserMailer < ActionMailer::Base
  default from: "kontakt@vinylfabrikken.no"

  def welcome_email(user)
  	@user = user
  	@url = "http://localhost:3000/users/login"
  	mail(:to => user.email, :subject => "Velkommen til Vinylfabrikken")
  end
end
