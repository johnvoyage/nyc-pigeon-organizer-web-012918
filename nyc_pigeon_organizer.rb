require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |main_stat, hash_one|
    hash_one.each do |sub_stat, name_arr|
      name_arr.each do |index|
        if !pigeon_list[index]
          pigeon_list[index] = {
            main_stat => [sub_stat.to_s]
          }
        elsif main_stat == :color
          pigeon_list[index][:color] << sub_stat.to_s
        else
          pigeon_list[index][main_stat] = [sub_stat.to_s]
        end
      end
    end
  end
  pigeon_list
end
