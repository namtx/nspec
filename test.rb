require_relative "number_service"
require_relative "example"
require_relative "describe"
require_relative "helper"

include Helper

describe NumberService do
  describe "#number" do
    it "returns 12" do
      expect(NumberService.new.number).to eq 14
      expect(NumberService.new.number).not_to eq 222
    end
  end
end

