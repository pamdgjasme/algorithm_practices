# @param {Character[][]} board
# @return {Boolean}

ARRAY_GROUP_BY = 3
QUADRANT_GROUP_BY = 9

def is_valid_sudoku(board)
    [
        valid_rows_and_cols?(board),
        valid_quadrant?(board)
    ].all?
end

def valid_rows_and_cols?(board)
    iteration_counter = (0..board.length - 1)
    iteration_counter.each do |row_idx|
        temp_rows = []
        temp_cols = []
        iteration_counter.each do |col_idx|
            row_value = board[col_idx][row_idx]
            col_value = board[row_idx][col_idx]

            temp_rows << row_value if row_value != "."
            temp_cols << col_value if col_value != "."
        end
        return false if !valid_array?(temp_rows) || !valid_array?(temp_cols)
    end
    true
end

def valid_array?(arr)
    arr_temp = []
    arr.each do |value|
        next if value == "."
        return false if arr_temp.include?(value)

        arr_temp << value
    end
    true
end

def valid_quadrant?(board)
    quadrants = generate_quadrant(board)
    quadrants.each do |quadrant|
        quadrant.each_slice(QUADRANT_GROUP_BY) do |grouped|
            return false unless valid_array?(grouped)
        end
    end
    true
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
