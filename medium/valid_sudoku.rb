# @param {Character[][]} board
# @return {Boolean}

ARRAY_GROUP_BY = 3
QUADRANT_GROUP_BY = 9

def is_valid_sudoku(board)
    [
        valid_rows?(board),
        valid_cols?(board),
        valid_quadrant?(board)
    ].all?
end

def valid_rows?(board)
    valid_flag = true
    board.each do |row|
        unless valid_array?(row)
            valid_flag = false
            break
        end
    end
    valid_flag
end

def valid_cols?(board)
    valid_flag = true
    iteration_counter = (0..board.length - 1)
    iteration_counter.each do |column_index|
        column = []
        iteration_counter.each do |row_index|
            column << board[row_index][column_index]
        end
        unless valid_array?(column)
            valid_flag = false
            break
        end
    end
    valid_flag
end


def valid_array?(arr)
    arr_temp = []
    valid    = true
    arr.each do |value|
        value = value.to_i
        next if value == 0

        if arr_temp.include?(value)
            valid = false
            break
        else
            arr_temp << value
        end
    end

    valid
end

def valid_quadrant?(board)
    quadrants = generate_quadrant(board)
    valid_flag = true
    quadrants.each do |quadrant|
        quadrant.each_slice(QUADRANT_GROUP_BY) do |grouped|
            unless valid_array?(grouped)
                valid_flag = false
                break
            end
        end
    end
    valid_flag
end

def generate_quadrant(board)
    quadrants = Array.new(ARRAY_GROUP_BY, [])
    board.each do |row|
        row.each_slice(ARRAY_GROUP_BY).with_index do |grouped, index|
            quadrants[index] = quadrants[index] + grouped
        end
    end

    quadrants
end
