whichs = ["crowdsourced",
          "aggregated",
          "tremendous",
          "innovative",
          "smart"]


whats = [
    "crowdsourced",
    "aggregated",
    "tremendous",
    "innovative",
    "smart"
]


things = ["social network",
          "e-commerce platform",
          "data aggregator",
          "easy CRM",
          "dating service",
          "video-sharing service",
          "online learning platform",
          "new payment method",
          "social media tool"]

fors = [
    "farmers",
    "truck drivers",
    "hipsters",
    "female college students",
    "moms younger 21"
]

helps = [
    "to analyze trends in the industry",
    "to make the world better thing",
    "improving social disbalance",
    "to crowdsource social data",
    "local business to prosper",
    "to improve the environment"
]

competitors = [
    "Very few competitors",
    "No competitors"
]


5.times do |t|
  what = whats[rand(whats.length)]
  thing = things[rand(things.length)]
  which = whichs[rand(whichs.length)]
  f = fors[rand(fors.length)]
  help = helps[rand(helps.length)]
  competitor = competitors[rand(competitors.length)]
  pitch = "Idea no #{t}. #{which} #{thing} for #{f} that helps #{help}. #{competitor}."
  puts pitch
  Image.create!(:url => 'http://upload.wikimedia.org/wikipedia/en/thumb/9/96/CGIYoda.jpg/200px-CGIYoda.jpg', :title => pitch)
end

