require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do

  describe "GET 'form'" do
    it "returns http success" do
      get 'form'
      expect(response).to be_success
    end
  end

end
