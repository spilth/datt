class Variant < ApplicationRecord
  belongs_to :document

  validates :name, presence: true

  validates :document, presence: true
end
