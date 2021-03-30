require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "Validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :content }
  end
end
