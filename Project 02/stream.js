var Twitter = require('twitter'); // for the Twitter API
var env = require('dotenv').config(); // for loading API credentials
var moment = require('moment'); // for displaying dates nicely

var count = 0;
var tv = new GPIO(18, 'out');

var client = new Twitter({
    consumer_key: process.env.TWITTER_CONSUMER_KEY,
    consumer_secret: process.env.TWITTER_CONSUMER_SECRET,
    access_token_key: process.env.TWITTER_ACCESS_TOKEN_KEY,
    access_token_secret: process.env.TWITTER_ACCESS_TOKEN_SECRET
});

// slices the arguments passed in via the command line. args[0] is the first argument after the file name.
var args = process.argv.slice(2);


// set up a stream
var streamer = client.stream('statuses/filter', {track: args[0]}); //ask user for a keyword


streamer.on('data', function(tweet) { //runs on every incoming tweet

    if(){ //time between tweets is less then 3 seconds
       
    }
    count++;
    if(count > 1000)
      {
        tvOff();
      }
    var name = tweet.user.screen_name;
    var text = tweet.text;
    var date = moment(tweet.created_at, "ddd MMM DD HH:mm:ss Z YYYY");

//    console.log(">    @" + name + " said: " + text + ", on " + date.format("YYYY-MM-DD") + " at " + date.format("h:mma"));

});


//write helper
function tvOff(){
    tv.writeSync(1); //writes to powertail
}