require 'rails_helper'

RSpec.describe User, type: :model do
  it 'raises an error when :gov_id_number, :gov_id_type, :email is not present' do
  end
  it 'raises an error when :gov_id_number, :email is not unique' do
  end
  it 'creates a unique user' do
  end
end
