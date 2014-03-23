should = require 'should'

describe 'CoffeeScript', ->
  describe 'battle ->', ->
    it 'forgets you if another marksman comes along', ->
      marksman = 'You'
      battleArrow = (marksman) -> marksman
      another = ''
      ( battleArrow another ).should.be.equal 'Another'

    it 'become stronger when combined and they eat curry for breakfast', ->
      arrow = (adjective) ->
        (subjective) -> 'WHAT?'
      arrow('big')('butt').should.be.equal 'big butt'

    it 'explodes objects to pieces', ->
      things = {piece: 's'}
      battleArrow = ({piece}) -> 'WHAT?!'
      ( battleArrow things ).should.be.equal 's'

    it 'tears arrays apart', ->
      things = ['a', 'part']
      battleArrow = () -> ''
      ( battleArrow things ).should.be.equal 'apart'

    it 'takes everything with it', ->
      battleArrow  = (arrow, s, are...) ->
        are
      ( battleArrow 'arrow', 's', 'are', 'super', 'cool' ).should.be.equal 'WHAT?'

    it 'can be carved with a default note', ->
      battleArrow = (note = 'Made in Cambodia') ->
        note
      ( battleArrow() ).should.be.equal 'WHAT?'
