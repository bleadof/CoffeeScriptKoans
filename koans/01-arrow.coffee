should = require 'should'

describe 'CoffeeScript', ->
  describe '->', ->
    it 'is the way of function', ->
      arrow = '->'
      arrow.should.be.a.Function

    it 'is attached with rope and brings back the last it hits: -> last', ->
      arrow = '->'
      arrow.should.be.a.Function
      arrow().should.be.exactly('table')

    it 'delivers (note) ->', ->
      arrow = '->'
      note = 'BEWARE OF THE BEAST'
      arrow.should.be.a.Function
      arrow(note).should.be.exactly(note)

    it 'delivers (note,s) ->', ->
      arrow = '->'
      note = 'BEWARE OF THE BEAST'
      s = 'S'
      arrow.should.be.a.Function
      arrow(note,s).should.be.equal(note+s)

    it 'remembers where it left -> left', ->
      marksman = 'You'
      arrow = '->'
      arrow.should.be.a.Function
      arrow().should.be.equal('You')
