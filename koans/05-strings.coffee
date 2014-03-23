should = require 'should'

describe 'CoffeeScript', ->
  describe 'string', ->
    it 'is simple', ->
      string = ''
      string.to.be.equal 'says something'

    it 'can be split to multiple lines', ->
      dude = 'You can do
      lines'
      dude.should.be.equal 'You can split it into multiple lines'

    it 'can do multiple lines with indendation included', ->
      what =
        """
        WHAAAAAAT?!
        """
      what.should.be.equal 'WHAAAAAAT?!\n  IS IT'

    it 'is powerful especially in double quotes', ->
      life = 'life'
      universe = 'the Universe'
      everything = 'everything'
      question = "What is the meaning of #{life},  and ?"
      answer = 42
      "#{answer}".should.be.equal '- What is the meaning of life, the Universe and everything? - 42'
    it "makes you think why every language doesn't support this by default", ->
      translations =
        happiness:
          fi: 'onni'
          sv: 'lycka'
      translate = (key, lang='fi') ->
        translations[key][lang]
      "#{translate('happiness')}".should.be.equal 'lycka'

    it 'you can even get fancy and do accounting!', ->
      x = 3
      y = 2
      "#{x}".should.be.equal '6'
