class Invite < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  def status
    if self.rsvp == false
      return "Not Going"
    elsif self.rsvp == true
      return "Going!"
    else
      return "No Response"
    end
  end

  # no good
  def is_unique?
    true unless Invite.all.include?(self)
  end

end