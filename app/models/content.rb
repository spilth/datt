class Content < ApplicationRecord
  belongs_to :document
  belongs_to :section
  belongs_to :variant

  validates :body, presence: true
  validates :document, presence: true
  validates :section, presence: true
  validates :variant, presence: true
end
