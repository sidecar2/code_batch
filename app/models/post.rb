class Post < ActiveRecord::Base
  attr_accessible :content, :tag_list, :user_id, :description, :notes, :taggable_id, :taggings, :codetype, :css, :html, :haml, :scss, :javascript, :coffee, :php, :ruby


    belongs_to :user

    acts_as_taggable

   has_reputation :votes, source: :user, aggregated_by: :sum




#searchable do
  #text :description, :default_boost => 3
  #text :tag_list
  
  #end
end
