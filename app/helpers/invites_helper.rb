module InvitesHelper

  def users_remaining(event_id)
    # return all users that have not already been invited
      #-- iterate over invite table
      #-- add user_ids
      #-- skip any that have already been added

    uniques = []
    Invite.all.each do |user|
      uniques << user
      next if uniques.include?(user.user_id)
    end
    uniques
  end

end
