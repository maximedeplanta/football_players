require 'rails_helper'

RSpec.describe Defender, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:position) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
