class Document < ApplicationRecord
  has_many :sections
  has_many :variants
  has_many :contents

  validates :title, presence: true
  validates :description, presence: true
end
