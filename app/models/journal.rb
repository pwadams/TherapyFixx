class Journal < ActiveRecord::Base
  belongs_to :patient
  has_many  :entries, dependent: :destroy
  validates :name, presence: true
end
