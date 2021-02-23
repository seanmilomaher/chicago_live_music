# venues = Venue.create(
#   [
#     {
#       name: "The Empty Bottle",
#       address: "1035 N Western Ave",
#       image: "https://images.squarespace-cdn.com/content/v1/5486852ae4b00adc4f6f0ab6/1511906096406-0OSRWHSXIVD0MLRXVVXS/ke17ZwdGBToddI8pDm48kOno2EuTsM6G9mZCpfi3Tr8UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKceh44-4o0IT_yg-0xCfmhfxyUQHLt40Qz7SRy5SWKJLEp2IGSeVWKKcxv3JR3FBEw/empty-bottle-landmark.jpg",
#       email: "emptybottle@gmail.com",
#       password: "password",
#     },
#     {
#       name: "The Aragon Ballroom",
#       address: "1106 W Lawrence",
#       image: "https://www.chicagotribune.com/resizer/GdSPnh878TfLxR2CP0IaHXsQpAE=/1200x0/right/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/HKHFGTHF4JBDDM4ZDEMNGGEU7Y.jpg",
#       email: "aragonballroom@gmail.com",
#       password: "password",
#     },
#     {
#       name: "Concord Music Hall",
#       address: "2051 N Milwaukee Ave",
#       image: "https://media-cdn.tripadvisor.com/media/photo-s/11/85/d8/38/20171212-190128-largejpg.jpg",
#       email: "concordmusichall@gmail.com",
#       password: "password",
#     },
#   ]
# )

bands = Band.create(
  [
    {
      name: "the Roof Dogs",
      from_city: "Chicago",
      from_state: "IL",
      image: "https://i.scdn.co/image/acaabd0e26ddac4dd8438bded2756d374371518e",
      bio: "Jangley indie-rock from Chicago"
    },
    {
      name: "The Bascinets",
      from_city: "Columbus",
      from_state: "OH",
      image: "https://i3.sndcdn.com/avatars-waZxTwMD3reYYiE2-VQvcNA-t500x500.jpg",
      bio: "Just a tight as sin rock group"
    },
    {
      name: "tricot",
      from_city: "Kyoto",
      from_state: "Japan",
      image: "https://img.discogs.com/3gPSAfCK5cmvXL6w1PuYjJo92rU=/600x400/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-2869329-1564957672-5957.jpeg.jpg",
      bio: "Groovy math rock with pretty vocals"
    }
  ]
)

events = Event.create(
  [
    {
      name: "the Roof Dogs CD release w/ The Bascinets",
      venue_id: 1,
      start_time: "8:00PM",
      end_time: "10:00PM",
      date: "6/27/21",
      cover: "$10",
      age_limit: "21+",
      image: "https://i1.wp.com/imperfectfifth.com/wp-content/uploads/2018/10/Screen-Shot-2018-10-31-at-6.41.07-PM.png?fit=556%2C370"
    },
    {
      name: "The Bascinets Play Forever",
      venue_id: 2,
      start_time: "8:00PM",
      end_time: "whenever",
      date: "8/4/21",
      cover: "$7",
      age_limit: "18+",
      image: "https://www.columbusalive.com/storyimage/OH/20200827/ENTERTAINMENT/200828820/AR/0/AR-200828820.jpg?MaxW=600"
    },
    {
      name: "Tricot: Live at Concord Hall",
      venue_id: 3,
      start_time: "7:30PM",
      end_time: "9:00",
      date: "3/30/21",
      cover: "$15",
      age_limit: "21+",
      image: "https://i.ytimg.com/vi/-rZWdolJfgk/maxresdefault.jpg"
    },
  ]
)

event_bands = EventBand.create(
  [
    {
      band_id: 1,
      event_id: 1,
      start_time: "8:45PM",
      end_time: "10:00PM",
      order: "2nd"
    },
    {
      band_id: 2,
      event_id: 1,
      start_time: "8:00PM",
      end_time: "8:30PM",
      order: "1st"
    },
    {
      band_id: 2,
      event_id: 2,
      start_time: "8:00PM",
      end_time: "whenever",
      order: "1st"
    },
    {
      band_id: 3,
      event_id: 3,
      start_time: "7:30PM",
      end_time: "9:00PM",
      order: "1st"
    },
  ]
)