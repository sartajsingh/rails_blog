require 'rails_helper'

RSpec.describe Comment, :type => :model do

  context "associations" do
    it{ should belong_to(:article)}
  end

  context "attributes" do
    it{ should have_attribute(:body)}
    it{ should have_attribute(:commenter)}
  end



end
