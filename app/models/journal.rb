class Journal < ActiveRecord::Base
  belongs_to :patient
  has_many  :entries, dependant: :destroy
  validates :name, presence: true
end
