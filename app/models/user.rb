require 'openssl'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_create :generate_and_encrypt_key_pair


  private

  def generate_and_encrypt_key_pair
  	new_rsa_key = OpenSSL::PKey::RSA.new(2048)
  	cipher = OpenSSL::Cipher::Cipher.new('des3')

  	self.encrypted_private_key = new_rsa_key.to_pem(cipher, self.password)
	self.public_key = new_rsa_key.public_key.to_pem
	self.first_name = "Test #{id}"

  	# Rails.logger.debug("generate_and_encrypt_key_pair: #{self.password}\n\n#{self.encrypted_private_key}\n\n#{self.public_key}")
  end
end
