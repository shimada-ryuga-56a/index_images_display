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