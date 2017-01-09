class HomeController < ApplicationController
  def index
  end

  def notification
  	Notifier.notify(
			:image	 => "image.png", #no image currently
			:title 	 => "Ding!",
			:message => "This is our wonderful notification."
		)

		Notifier.default_notifier = :notify_send
  end
end
