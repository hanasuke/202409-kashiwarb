class Cell
  def initialize(is_mine)
    @is_mine = is_mine
    @is_open = false
    @is_flagged = false
  end

  def mine?
    @is_mine
  end

  def display
    @is_open ? '0' : '-'
  end

  def open
    @is_open = true
  end
end
