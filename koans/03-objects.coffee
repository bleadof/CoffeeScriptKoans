should = require 'should'

describe 'CoffeeScript', ->
  describe 'objects', ->
    it 'are pretty', ->
      car =
        key: 'sesam open'
      car.should.be.equal key: 'sesam open', license: 'IDD-QD'

    it 'come with moustaches', ->
      object = {}
      object.should.be.equal
        growing: 'a'
        moustache: 'will'
        make: 'you'
        hairier: '.'

    it 'can be built from pieces when using moustaches', ->
      here = 'is a piece'
      take = 'this too'
      object = {here, cool: "isn't it"}
      object.should.be.equal
        here: 'is a piece'
        take: 'this too'
        cool: "isn't it"

    it 'can be destroyed back into pieces using the all encompassing moustaches', ->
      stickFigure =
        head: 'o'
        neck: "'"
        rightHand: "-´", leftHand: "`-"
        rightLeg: '/', leftLeg: '\\'
      { head } = stickFigure
      plate = [head]
      plate.should.be.equal(['o', "`-", '/'])

    it 'moustaches inside moustaches are also possible', ->
      moustaches =
        inside:
          moustauche: 'is cool'
          breaks: 'things into pieces'
          types: { hitler: 'hitler', pencil: 'pencil', dali: 'dali', handlebar: 'handlebar' }
      { inside: { breaks } } = moustaches
      dali.should.be.equal 'dali'
      moustache.should.be.equal 'is cool'
