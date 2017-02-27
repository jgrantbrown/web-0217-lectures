class Character < ActiveRecord::Base
  belongs_to :tv_show
  belongs_to :actor

  def character_attributes=(character_attributes)
    TvShow.find_or_creat_bt(name: character_attributes[:tv_show_name])
    Actor.find_or_creat_bt(name: character_attributes[:actor_name])
    Character.create
end
