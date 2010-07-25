Given /^I am not yet playing$/ do 
  @messenger = StringIO.new
  game = Mastermind::Game.new(@messenger)
  game.start
end

When /^I start a new game$/ do 
  game = Mastermind::Game.new.start
  @message = game.start
end

Then /^the game should say "(.*)"$/ do |message|
  @messager.string.split("\n").should include(message)
end