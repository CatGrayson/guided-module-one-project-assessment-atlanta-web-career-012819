require 'pry'

class CommandLineInterface

  attr_accessor :name, :age, :color, :sign

  def initialize
    @name = nil
    @age = nil
    @color = nil
    @sign = nil
    @moods = ["afraid", "angry", "sad", "surprised", "joyful", "loving"]
  end

  def start
    greet
    log_in
    find_videos
  end

  def greet
    puts "In your feelings? Me too... let me help you find videos to suit your mood!"
  end

  def log_in
    print "If you are a returning user, please enter your username, otherwise please create your username: "
    @name = gets.chomp.to_s
    found_user = User.find_by(name: @name)
    if found_user
      puts "Welcome back #{@name}!"
    else
      print "Now that you've created your username, please tell us more about yourself: "
      get_user_info
      User.create(name: @name, age: @age, favorite_color: @color, zodiac_sign: @sign, status: true)
    end
  end

  def get_user_info
    print "Age: "
    @age = gets.chomp.to_i
    print "What's your favorite color: "
    @color = gets.chomp.to_s
    print "Please share your zodiac sign: "
    @sign = gets.chomp.to_s
  end

  def get_mood
    puts "Select a mood from the list that best describes your current feelings."
    @moods.each.with_index(1) do |mood, index|
      puts "#{index}. #{mood}"
    end
    gets.chomp.to_i
  end

  def find_videos
    mood_index = get_mood
    current_mood = @moods[mood_index-1]
    puts "Here's a video we think you'll like. Please click the link to view and enjoy."
    Video.find_by mood: current_mood
    # find videos with current mood
    # `open https://youtube.com/results?search_query=${current_mood}+mood`
    # https://www.youtube.com/results?search_query=happy+mood
    # show found found video titles

    # have user pick video
    # get video url
    # open video url
  end

  def save_video_to_favorites
    print "Would you like to save this video to your favorites?"
    # save video from list to favorites to watch again later
    # save in Favorites
    Favorite.create(user: @user, video: @video)

  end

  def view_saved_videos
    print "Would you like to see a list of your favorite videos?"
    # see list of saved videos & click link to view
    Favorites.all
  end

  def unsave_video_from_favorites
    print "Would you like to remove a video from your favorites?"
    # remove video from favorites list
  end

  def update_profile_info
    print "Would you like to update your profile?"
    # to update info in previously saved profile
  end

end
