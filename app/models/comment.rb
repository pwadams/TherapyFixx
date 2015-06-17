class Comment < ActiveRecord::Base
  belongs_to :entry
  belongs_to :therapist
end
