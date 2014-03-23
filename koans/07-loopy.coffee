should = require 'should'

describe 'CoffeeScript', ->
  describe 'can be loopy', ->
    it 'with for', ->
      fakeNumbers = [0..10]
      fakeNumbers.push 'poop'
      realNumbers = for number in fakeNumbers
        number
      realNumbers.should.be.equal [0..10]

    it 'also with while', ->
      iAmHere = 'I might as well learn something'.split(' ')
      done = while iAmHere.pop() isnt 'might'
        "and then #{iAmHere} die"
      [stuff..., last] = done
      last.should.be.equal 'and then I die'
