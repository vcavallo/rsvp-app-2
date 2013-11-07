class Invite < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  def status
    if self.rsvp == false
      return "not going"
    elsif self.rsvp == true
      return "going!"
    else
      return "yet to respond"
    end
  end

  # no good
  def is_unique?
    true unless Invite.all.include?(self)
  end

end