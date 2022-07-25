require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  before :each do
    # I would use a testing gem like factory_bot or faker to automate seed data creation for tests.
  end

  describe "GET /index" do
    context 'Exact results' do
      it 'returns the user information when only one matching record exists' do
      end
      it 'returns an error when multiple users exist matching criteria' do
      end
    end
    it 'returns an error when no users exist' do 
    end
    it 'returns all users when no query parameters are provided' do
    end
  end

  describe "POST /create" do
    it 'creates a new user if their parameters are unique' do 
    end
    it 'returns an error if the user parameters are not unique' do
    end
    it 'ignores custom parameters' do
    end
  end

  describe "GET /index" do
    it 'returns an error when multiple users exist matching criteria' do
    end
    it 'returns an error when no users exist' do 
    end
    it 'deletes the unique user matching the parameters' do
    end
  end
end
