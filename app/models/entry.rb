class Entry < ActiveRecord::Base
  belongs_to :journal, dependant: :destroy
end
