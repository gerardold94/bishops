class Point:
    def __init__(self, lineal):
        self.x = self.calcX(lineal)
        self.y = self.calcY(lineal)

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y

    def calcX(self, position):
        return (position - 1) // 8

    def calcY(self, position):
        return (position - 1) % 8
