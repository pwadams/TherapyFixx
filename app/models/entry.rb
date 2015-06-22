class Entry < ActiveRecord::Base
  belongs_to :journal, dependent: :destroy
end
