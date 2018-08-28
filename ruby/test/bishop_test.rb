require "test_helper"
require "bishop"

describe Bishop do
  let(:valid_bishop) { Bishop.new(1, 64) }
  let(:same_diagonal_bishop) { Bishop.new(8, 57) }
  let(:different_diagonal) { Bishop.new(17, 30) }
  let(:invalid_bishop) { Bishop.new(1, 8) }
  let(:same_position) { Bishop.new(35, 35) }

  context "when source and destination are valid" do
    it "valid_move returns true" do
      value(valid_bishop.valid_move).must_equal true
    end

    it "moves returns 1 when source and dest are in the same diagonal" do
      value(same_diagonal_bishop.moves).must_equal 1
    end

    it "moves returns 2 when source and dest are not in the same diagonal" do
      value(different_diagonal.moves).must_equal 2
    end

    it "moves returns 0 when source and dest are the same" do
      value(same_position.moves).must_equal 0
    end

    it "same_diagonal returns true for positions in the same diagonal" do
      value(same_diagonal_bishop.same_diagonal).must_equal true
    end

    it "same_diagonal returns false for positions in different diagonal" do
      value(different_diagonal.same_diagonal).must_equal false
    end
  end

  context "when source and destination are not valid" do
    it "valid_move returns false" do
      value(invalid_bishop.valid_move).must_equal false
    end

    it "moves returns -1" do
      value(invalid_bishop.moves).must_equal(-1)
    end
  end
end
