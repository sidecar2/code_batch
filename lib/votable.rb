module Votable
  def up_vote_from(usr)
    place_vote(1, usr.id)
  end

  def down_vote_from(usr)
    place_vote(-1, usr.id)
  end

  private

  def place_vote(direction, usr_id)
    v = self.votes.find_or_create_by_user_id(usr_id)
    v.update_attribute(:polarity, direction)
  end
end
