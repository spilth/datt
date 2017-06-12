class Variant < ApplicationRecord
  belongs_to :document

  has_many :contents, dependent: :destroy

  validates :name, presence: true
  validates :document, presence: true
end
