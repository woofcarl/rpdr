gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'drag_queen'

class DragQueenTest < Minitest::Test
    def test_it_should_have_name
        drag_queen = DragQueen.new("Bianca Del Rio", 37, "New York City")
        assert_equal "Bianca Del Rio", drag_queen.name
    end

    def test_can_have_different_names
        drag_queen = DragQueen.new("Courtney Act", 31, "West Hollywood")
        assert_equal "Courtney Act", drag_queen.name
    end
    
    def test_it_has_a_default_style
        drag_queen = DragQueen.new("Gia Gunn", 23, "Chicago")
        assert_equal "Pageant Queen", drag_queen.style
    end

    def test_it_can_have_different_styles
        drag_queen = DragQueen.new("Bianca Del Rio", 37, "New York City", "Comedy Queen")
        assert_equal "Comedy Queen", drag_queen.style
    end
    
    def test_it_has_an_age
        drag_queen = DragQueen.new("Bianca Del Rio", 37, "New York City")
        assert_equal 37, drag_queen.age
    end
    
    def test_it_has_a_hometown
        drag_queen = DragQueen.new("Bianca Del Rio", 37, "New York City")
        assert_equal "New York City", drag_queen.hometown
    end
end