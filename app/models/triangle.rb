class Triangle < ApplicationRecord

    def sides(side_one, side_two, side_three)
        side_one = ?
        side_two = ?
        side_three = ?
    end 
    
    def sides_check(sides)
        if side_one == side_two || side_one == side_three || side_two == side_three
            return :Isoceles
        elsif side_one == side_two && side_one == side_three && side_two == side_three
            return :Equilateral
        elsif side_one != side_two && side_one != side_three && side_two != side_three
            return :Scalene
        else 
            return :Incorrect
        end
    end
end