module KeyService

  def self.generate_and_encrypt_user_key_pair(user, password)
    new_rsa_key = OpenSSL::PKey::RSA.new(2048)
    cipher = OpenSSL::Cipher::Cipher.new('des3')

    user.encrypted_private_key = new_rsa_key.to_pem(cipher, password)
    user.public_key = new_rsa_key.public_key.to_pem
  end

end