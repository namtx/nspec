require_relative "example"
require "colorize"
require "pry"

class Describe
  attr_reader :context_name, :examples, :describes

  def initialize context_name, &block
    @context_name = context_name
    @examples = []
    @describes = []
    instance_eval &block
  end

  def describe context_name, &block
    describes << Describe.new(context_name, &block)
  end

  def it context_name, &block
    examples << Example.new(context_name, &block)
  end

  def test
    describes.each do |describe|
      describe.examples.each do |example|
        example.test_results.each do |result|
          print result ? ".".colorize(color: :green) : ".".colorize(color: :red)
        end
      end
    end
  end
end
