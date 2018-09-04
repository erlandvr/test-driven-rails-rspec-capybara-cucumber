
class BowlingGame
  attr_reader :first_in_frame

  def initialize
    @first_in_frame = 0
  end

  def pins(rolls)
    @rolls = rolls
  end

  def score
    frame = 0
    score = 0
    #the index used to choose a roll in the frame

    while frame < 10
      if strike?
        score += 10 + bonus_for_strike
        set_to_one_roll_for_strike
      elsif spare?
        score += 10 + bonus_for_spare
      else
        #the sum of the rolls chosen by index
        score += standard_frame_score
      end
      #incrementation of each frame or turn
      frame += 1
      #incrementation of the rolls per frame
      @first_in_frame += 2
    end
    score
  end

private

  def standard_frame_score
    @rolls[first_in_frame] + @rolls[first_in_frame + 1]
  end

  def spare?
    @rolls[first_in_frame] + @rolls[first_in_frame + 1] == 10
  end

  def bonus_for_spare
    @rolls[first_in_frame + 2]
  end

  def strike?
    @rolls[first_in_frame] == 10
  end

  def bonus_for_strike
    @rolls[first_in_frame + 1] + @rolls[first_in_frame + 2]
  end

  def set_to_one_roll_for_strike
    @first_in_frame -= 1
  end
end
