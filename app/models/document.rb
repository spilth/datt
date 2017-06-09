class Document < ApplicationRecord
  has_many :sections
  has_many :variants
end
