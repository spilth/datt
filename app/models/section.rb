class Section < ApplicationRecord
  belongs_to :document

  validates :title, presence: true

  validates :document, presence: true
end
