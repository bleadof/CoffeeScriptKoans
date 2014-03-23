should = require 'should'

describe 'CoffeeScript', ->
  describe 'class', ->
    it 'is a magical word', ->
      class Less
      instance = '?'
      instance.should.be.an.instanceOf(Less)

    it 'hides JSs prototypes', ->
      class Less
        constructor: () ->
          @thing = ''
      instance = '?'
      instance.should.be.an.instanceOf(Less)
        .and.have.property('thing', 'ie')

    it 'hides prototypical "inheritance" for you', ->
      class Camera
        constructor: ->

      class Super8 extends Camera
        constructor: ->
          super 0
      instance = new Super8
      instance.should.be.an.instanceOf(Super8)
        .and.have.property('type', 8);
