class Document < ApplicationRecord
  include EncryptionSupport

  has_many :document_keys
  has_many :customer_tags
  encrypts :login
  encrypts :password

  validates :title, presence: true


  after_validation :encrypt_data
  before_create :encrypt_data


  def data
    @data ||= JSON.parse(encrypted_data || '{}')
  end


  # private

  def encrypt_data()
    # TODO: Do this and that!
  	json_string = data.to_json
  	Rails.logger.debug("encrypted_data(#{self}): #{json_string}")

  	encrypted_data = json_string
  	title = "Neuer Titel: #{title}"
  	Rails.logger.debug("===> #{inspect}")
  end
end
