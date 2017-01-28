class Document < ApplicationRecord
  include EncryptionSupport

  has_many :document_keys
  has_many :customer_tags
  encrypts :login
  encrypts :password

  validates :title, presence: true


  def data
    @data ||= {}
  end
end
