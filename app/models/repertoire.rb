class Repertoire < ActiveRecord::Base
  belongs_to :music

  def next
    repertoire.where("id > ?", id).first
  end

  def prev
    repertoire.where("id < ?", id).last
  end
end
