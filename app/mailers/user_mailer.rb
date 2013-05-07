class UserMailer < ActionMailer::Base
  default from: "kontakt@vinylfabrikken.no"

  def welcome_email(user)
  	@user = user
  	@url = "http://vinylfabrikken-stage.herokuapp.com/users/login"
  	mail(:to => user.email, :subject => "Velkommen til Vinylfabrikken")
  end
end
