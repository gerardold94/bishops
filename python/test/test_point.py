import unittest
from bishop.point import Point

class TestPoint(unittest.TestCase):
    def setUp(self):
        self.point1 = Point(1)
        self.point2 = Point(64)

    def test_position_1(self):
        self.assertEquals(self.point1.x, 0)
        self.assertEquals(self.point1.y, 0)

    def test_position_64(self):
        self.assertEquals(self.point2.x, 7)
        self.assertEquals(self.point2.y, 7)

    def test_points_should_be_equals(self):
        self.assertEqual(self.point1, self.point1)

    def test_points_should_be_diferents(self):
        self.assertNotEqual(self.point1, self.point2)

    def test_calc_x_for_8(self):
        self.assertEqual(self.point1.calcX(8), 0)

    def test_calc_y_for_8(self):
        self.assertEqual(self.point1.calcY(8), 7)

if __name__ == '__main__':
    unittest.main()
