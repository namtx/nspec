require_relative "number_service"
require_relative "lib/helper"

include Helper

nspec = describe NumberService do
  describe "#number" do
    it "returns 12" do
      expect(NumberService.new.number).to eq 14
      expect(NumberService.new.number).not_to eq 222
      expect(NumberService.new).to_be instance_of(NumberService)
    end
  end
end

nspec.test
