class Content < ApplicationRecord
  belongs_to :document
  belongs_to :section
  belongs_to :variant
end
