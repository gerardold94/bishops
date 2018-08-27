import unittest
from bishop.bishop import Bishop

class TestBishop(unittest.TestCase):
    def setUp(self):
        self.validBishop = Bishop(1, 64)
        self.invalidBishop = Bishop(1, 8)
        self.oneMove = Bishop(8, 57)
        self.twoMoves = Bishop(25, 38)
        self.samePosition = Bishop(35, 35)

    def test_valid_move(self):
        self.assertTrue(self.validBishop.validMove())

    def test_invalid_move(self):
        self.assertFalse(self.invalidBishop.validMove())

    def test_invalid_return_minus_one(self):
        self.assertEqual(self.invalidBishop.moves(), -1)

    def test_solution_with_one_moves(self):
        self.assertEqual(self.oneMove.moves(), 1)

    def test_solution_with_two_moves(self):
        self.assertEqual(self.twoMoves.moves(), 2)

    def test_should_be_zero_for_same_position(self):
        self.assertEqual(self.samePosition.moves(), 0)

    def test_same_diagonal(self):
        self.assertTrue(self.oneMove.sameDiagonal())

    def test_diferent_diagonal(self):
        self.assertFalse(self.invalidBishop.sameDiagonal())

if __name__ == '__main__':
    unittest.main()
