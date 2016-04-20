class WelcomeController < ApplicationController

  # Show all the messages
  # Time for thoughts:
  # This makes a call to the db everytime it is hit
  # Is there a way we could cache this?
  # Yes, that's probably overkill, but trying to gather more lessons from this app
  def index
    @tmessages = Tmessage.all
  end
end
