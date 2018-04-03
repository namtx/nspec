class Example
  attr_reader :context_name, :test_results

  def initialize context_name, &block
    @context_name = context_name
    @test_results = []
    instance_eval &block
  end

  def expect result
    @result = result
    self
  end

  def to expectation
    test_results << expectation.call(result)
    self
  end

  def eq expectation
    proc { |n| n.eql?(expectation) }
  end

  def not_to expectation
    test_results << !expectation.call(result)
    self
  end

  def be_an_instance_of expectation
    proc { |instance| instance.is_a?(expectation) }
  end

  def match expectation
    proc { |str| str =~ expectation }
  end

  private
  attr_reader :result

  alias :to_be :to
end
