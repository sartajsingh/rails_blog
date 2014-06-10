require 'rails_helper'

RSpec.describe Article, :type => :model do
  context "validations" do
    it{ should validate_presence_of :title}
    it{ should ensure_length_of(:title).is_at_least(5)}
  end
  context "associations"do
    it{ should have_many(:comments)}
    it{ should have_many(:comments).dependent(:destroy) }
  end
end
