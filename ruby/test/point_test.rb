require "test_helper"
require "point"

describe Point do
  include Minitest::Spec::DSL

  let(:first_cell) { Point.new(1)  }
  let(:last_cell) { Point.new(64) }

  context "when position is 1" do
    it "has an X value of 0" do
      value(first_cell.x).must_equal 0
    end

    it "has an Y value of 0" do
      value(first_cell.x).must_equal 0
    end
  end

  context "when position is 64" do
    it "has an X value of 7" do
      value(last_cell.x).must_equal 7
    end

    it "has an Y value of 7" do
      value(last_cell.y).must_equal 7
    end
  end

  context "when compare two Points" do
    it "should be equals when X and Y are equals" do
      value(first_cell).must_equal first_cell.dup
    end

    it "should be differents when X and Y are differents" do
      value(first_cell).wont_equal last_cell
    end
  end
end
