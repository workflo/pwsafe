module EncryptionSupport
  extend ActiveSupport::Concern

  module ClassMethods
    def encrypts(name)
      define_method(name) do
        "Das ist #{name}"
      end

      define_method("#{name}=") do |value|
        data[name] = value
      end
    end
  end
end
