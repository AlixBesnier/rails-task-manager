class Task < ApplicationRecord

  def formatted_done
    if self.done
      "FAIT"
    else
      "PAS FAIT"
    end
  end
end
