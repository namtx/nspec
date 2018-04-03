require_relative "number_service"
require_relative "lib/helper"

include Helper

nspec = describe NumberService do
  describe "#number" do
    it "returns 12" do
      expect(NumberService.new.number).to eq 12
      expect(NumberService.new.number).not_to eq 222
      expect(NumberService.new).to be_an_instance_of(NumberService)
    end
  end

  describe "#match" do
    it "should match" do
      expect("namtx").to match(/^na.*$/)
    end

    it "should not match" do
      expect("namtx").not_to match(/^abc/)
    end
  end
end

nspec.test
