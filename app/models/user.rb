class User < ApplicationRecord
    validates :email, :gov_id_number, :gov_id_type, presence: true
    validates :email, :gov_id_number, uniqueness: true
    # Assumption: emails should be validated as well (but not a requirement) would opt for either a gem or custom regex. 
    # Assumption: presence validation should suffice to allow for manual bypassing/testing bypassing for unique cases like mononyms
    # schema restrictions required for uniqueness validations to avoid race conditions
    # Assumption: since we don't have a fixed list of gov_id_type the format of the numbers could varry so it's not possible to add format validations

end
