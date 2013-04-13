class Post < ActiveRecord::Base
  attr_accessible :content, :tag_list, :user_id, :description, :notes
    belongs_to :user

    acts_as_taggable
end
