require './models/cell'

MINE_COUNT = 3
SIZE = 3

def display(col_cells)
  col_cells.each do |rows|
    rows.each do |cell|
        print cell.display
    end
    puts ''
  end
end

def checkBomb(col_cells)
  col_cells.any?{ |rows| rows.any? { |row| row.mine? } }
end

def main()
  col = SIZE
  row = SIZE

  mine_point = (0..(col * row - 1)).to_a.sample(MINE_COUNT)

  p mine_point
  col_cells = []
  cell_counter = 0;
  col.times do
    row_cells = []
    row.times do
      row_cells.push Cell.new(mine_point.include?(cell_counter))
      cell_counter += 1
    end
    col_cells.push row_cells
  end

  display(col_cells)

  while true
    tate, yoko = gets.chomp.split(' ').map(&:to_i)

    col_cells[tate-1][yoko-1].open

    display(col_cells)
    p '爆発' if checkBomb(col_cells)
  end
end

main()

