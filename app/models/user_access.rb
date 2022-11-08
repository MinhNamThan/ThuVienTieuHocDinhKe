class UserAccess < ApplicationRecord
  belongs_to :user
  def self.resetData
    user_accesses = UserAccess.all
    user_accesses.each do |user_access|
      user_access.update_attribute :num_access, 0
    end
  end
end
