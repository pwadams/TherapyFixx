class Journal < ActiveRecord::Base
  belongs_to :user
  has_many  :entries, dependent: :destroy
  validates :name, presence: true
end
