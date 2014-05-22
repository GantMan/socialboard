# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require jquery.fittext
intervalId = 0

class Post
  constructor: (@author, @body) ->

  render: () ->
    "<div class=\"slide\"><h1>#{@body}</h1><h2>via @#{@author}</h2</div>"


class SlideShow
  constructor: (@posts) ->
    @currentSlide = 0
    @slideShow = jQuery('.slide-show')
    @renderCurrentSlide()
    return

  nextSlide: () ->
    if @currentSlide == @posts.length - 1
      @currentSlide = 0
    else
      @currentSlide = @currentSlide + 1

    @renderCurrentSlide()
    return

  renderCurrentSlide: () ->
    @slideShow.html(@posts[@currentSlide].render())

  addPost: (post) ->
    @posts.push(post)
    @currentSlide = @posts.length - 1
    return

addTweetsOnInterval = (show) ->
  show.addPost(new Post('bryanjos9', "Hello from #{Date()}"))
  clearInterval(intervalId)
  show.renderCurrentSlide()
  intervalId = setInterval((-> show.nextSlide()), 3000)
  setTimeout (-> addTweetsOnInterval(show)), 15000
  return

$(document).ready ->

  jQuery(".social_block").fitText()

  fakeTweets = [
    new Post("bryanjos0", "Hello from Cleveland")
    new Post("bryanjos1", "Hello from Washington")
    new Post("bryanjos2", "Hello from Cinncinati")
    new Post("bryanjos3", "Hello from New Orleans")
    new Post("bryanjos4", "Hello from Los Angelos")
    new Post("bryanjos5", "Hello from Cuba")
    new Post("bryanjos6", "Hello from Santa Clara")
    new Post("bryanjos7", "Hello from Boston")
    new Post("bryanjos8", "Hello from New York")
    new Post("bryanjos9", "Hello from Pittsburgh")
  ]

  show = new SlideShow(fakeTweets)
  intervalId = setInterval((-> show.nextSlide()), 3000)

  addTweetsOnInterval(show)
  return
