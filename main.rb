require 'pp'
require 'date'
require_relative 'connection'
require 'rails/observers/activerecord/active_record'

Dir['models/*'].each { |file|
    require_relative file
}

Dir['observers/*'].each { |file|
    require_relative file
}

require 'ruby-graphviz'

g = GraphViz.new( :G, :type => :digraph )

g.output( :png => "hello_world.png" )