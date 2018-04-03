class Describe
  attr_reader :context_name

  def initialize context_name, &block
    @context_name = context_name
    instance_eval &block
  end

  def describe context_name, &block
    Describe.new context_name, &block
  end

  def it context_name, &block
    Example.new context_name, &block
  end
end
