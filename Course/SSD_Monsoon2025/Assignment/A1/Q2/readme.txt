
This NoSQL dataset provides daily temperature and weather metrics for 100 Indian cities from January–June 2025, organized into two collections (temperatures and weather).

We suggest to create index if required

db.temperatures.createIndex({ city: 1, date: 1 });
db.temperatures.createIndex({ state: 1, date: 1 });

db.weather.createIndex({ city: 1, date: 1 });
db.weather.createIndex({ state: 1, date: 1 });

Sample Collection data

// temperatures (one per city per day)
{
  "city": "Mumbai",
  "state": "Maharashtra",
  "date": "2025-06-15",
  "temp": { "min_c": 26.4, "max_c": 33.1, "avg_c": 29.6 },
  "meta": { "region": "west", "type": "coastal", "source": "synthetic" }
}

// weather (one per city per day)
{
  "city": "Mumbai",
  "state": "Maharashtra",
  "date": "2025-06-15",
  "precip_mm": 54.2,
  "humidity_pct": 86,
  "wind_kmph": 14,
  "cloud_pct": 90,
  "condition": "Thunderstorm",
  "meta": { "region": "west", "type": "coastal", "source": "synthetic" }
}

