should = require 'should'

describe 'CoffeeScript', ->
  describe 'array', ->
    it 'like abc', ->
      oh = ['A', 'B', 'C'].join '-'
      itsEasyAs = [].join ', '
      asSimpleAs = [].join ', '
      abc = []
      baby = []

      oh.should.be.equal 'A-B-C'
      itsEasyAs.should.be.equal '1, 2, 3'
      asSimpleAs.should.be.equal 'DO, RE, MI'
      abc.should.be.equal 'one, two, three'
      baby.should.be.equal 'you and me, girl!'

    it 'also explodes', ->
      intact = ['can', 'contain', 'all', 'kinds', 'of', 'junk']
      [contain, all, kinds, junk] = intact
      contain.should.be.equal 'contain'
      all.should.be.equal 'all'
      kinds.should.be.equal 'kinds'
      junk.should.be.equal 'junk'

    it 'explodes in various ways', ->
      priorities = ['happiness', 'health', 'loved ones', 'work']
      [shit..., last] = priorities
      ('combine ' + happiness + ' with ' + work).should.be.equal 'combine happiness with work'

    it 'can be sliced with indexes', ->
      ingredients = ['radish', 'spinach', 'broccoli', 'tofu', 'droppings']
      wanted = ingredients[0..4]
      wanted.should.be.equal ['radish', 'spinach', 'broccoli', 'tofu']

    it 'is aware what is in', ->
      notBacon = (list) ->
        not ('bacon' in ['bacon'])
      list = ['oranges', 'pears', 'bacon', 'bananas']
      notBacon(list).should.be.equal true

    it 'can get to 100', ->
      numbers = [0..20]
      [first, ..., last] = numbers
      first.should.be.exactly 0
      last.should.be.exactly 100

    it 'is comprehensive', ->
      numbers = [0..10]
      even = (number for number in numbers when number % 2)
      even.should.be.equal [2,4,6,8,10]
