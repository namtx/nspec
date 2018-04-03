require_relative "describe"

module Helper
  def describe context_name, &block
    Describe.new context_name, &block
  end
end
