class Event < ActiveRecord::Base
  has_many :invites
  has_many :users, :through => :invites

  # def event_guests(event_id)
  #   Invite.all.select do |invite|
  #     puts "invite event_id: #{invite.event_id}"
  #     puts "event_id: #{event_id}"
  #     invite.event_id == event_id
  #   end
  # end

end
