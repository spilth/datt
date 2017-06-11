class Document < ApplicationRecord
  has_many :sections
  has_many :variants
  has_many :contents
end
