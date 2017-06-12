class Section < ApplicationRecord
  belongs_to :document

  has_many :contents, dependent: :destroy

  validates :title, presence: true
  validates :document, presence: true
end
