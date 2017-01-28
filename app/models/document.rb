class Document < ApplicationRecord
  has_many :document_keys
  has_many :customer_tags
end
