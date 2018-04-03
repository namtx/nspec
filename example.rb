class Example
  attr_reader :context_name

  def initialize context_name, &block
    @context_name = context_name
    instance_eval &block
  end

  def expect result
    @result = result
    self
  end

  def to expectation
    p expectation.call result
    self
  end

  def eq expectation
    proc { |n| n.eql?(expectation) }
  end

  def not_to expectation
    p !expectation.call(result)
    self
  end

  private
  attr_reader :result
end
