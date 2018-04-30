require "./spec_helper"

describe Loop do
  it "provides an iteration to loop" do
    previous_i = -1
    loop do |i|
      i.should eq(previous_i + 1)
      break if i > Random.rand(100) + 10
      previous_i = i
    end
  end

  it "provides way to specify the start for loop's iteration" do
    start = Random.rand(100)

    previous_i = start - 1
    loop(start) do |i|
      i.should eq(previous_i + 1)
      break if i > Random.rand(100) + 10
      previous_i = i
    end
  end
end
