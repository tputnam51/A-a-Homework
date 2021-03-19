class Simon

  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play

    until @game_over == true
       self.take_turn

    end

    if @game_over == true
      self.game_over_message
      self.reset_game
    end

  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if @game_over == false
      self.round_success_message
    end
    @sequence_length += 1
  end

  def show_sequence
    self.add_random_color 
  end

  def require_sequence
    
    puts "Repeat the correct sequence"
    user_input = [get.chomp]

    if @seq != user_input
      @game_over = true
    end
    
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Great job, you hit all the correct keys "
  end

  def game_over_message
    
    puts "GAME OVER"

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def helper
    
  end
  
end