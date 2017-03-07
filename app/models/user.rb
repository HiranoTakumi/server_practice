class User < ApplicationRecord
  class << self
    def authenticate(name)
      user = find_by(name: name)
      if user
        user
      else
        nil
      end
    end
  end
end
