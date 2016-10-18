class Support < ApplicationRecord
  validates :name, :email, presence: true
  max_paginates_per 7

  def self.search(search)
    where("name ILIKE ? OR email ILIKE ? OR department ILIKE ?
    OR message ILIKE ?",
    "%#{search}%", "%#{search}%", "%#{search}%","%#{search}%")
    # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])

  end

  def toggle_done
    if self.done
      self.update({done: false})
    else
      self.update({done: true})
    end
  end

  def done_status

    bool = done.nil? ? false : done
    bool.to_s
  end
end
