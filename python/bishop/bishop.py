from point import Point

class Bishop:
    def __init__(self, source, dest):
        self.source = Point(source)
        self.dest= Point(dest)

    def moves(self):
        if self.source == self.dest:
            return 0
        elif not self.validMove():
            return -1
        return 1 if self.sameDiagonal() else 2

    def validMove(self):
        return (self.source.x + self.source.y) % 2 == (self.dest.x + self.dest.y) % 2

    def sameDiagonal(self):
        return abs(self.dest.x - self.source.x) == abs(self.dest.y - self.source.y)
