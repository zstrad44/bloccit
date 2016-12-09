require 'rails_helper'

RSpec.describe Advertisment, type: :model do
  let(:advertisment) { Advertisment.create!(title: "New advertisment Title", body: "New advertisment Body", price: integer) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(advertisment).to have_attributes(title: "New advertisment Title", body: "New advertisment Body", price: integer)
    end
  end
end #Rspec end
