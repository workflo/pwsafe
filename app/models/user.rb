class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_create :generate_and_encrypt_key_pair

  private

  def generate_and_encrypt_key_pair
    KeyGenerationService::generate_and_encrypt_user_key_pair self, password
  end
end
