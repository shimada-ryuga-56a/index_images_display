require "csv"

CSV.foreach('db/csv/events.csv', headers: true) do |row|
  Event.find_or_create_by!(name: row['name'], date: row['date']) do |event|
    event.category = row['category']
    event.name = row['name']
    event.name_ruby = row['name_ruby']
    event.date = row['date']
    event.place = row['place']
    event.place_prefecture = row['place_prefecture']
    event.is_canceled = row['is_canceled']
  end
end

CSV.foreach('db/csv/events.csv', headers: true) do |row|
  event = Event.find_by(name: row['name'], date: row['date'])
  # if event.visual_image.attached?
  #   return
  # end
  event.visual_image.attach(io: File.open(Rails.root.join(row['visual_image'])),filename: File.basename(row['visual_image']))
end
