should = require 'should'

describe 'CoffeeScript', ->
  describe 'control structures', ->
    it 'can get iffy', ->
      sad = true
      life = if sad then 'sad' else 'happy'
      life.should.be.equal 'happy'

    it 'can be even iffy and complicated', ->
      sadBut = true
      can = undefined
      life =
        if can is 'be'
          'dope'
        else if sadBut
          'synical'
        else
          'what ever'
      life.should.be.equal 'dope'

    it 'ifs can also be used more procedurally', ->
      dat = true
      something = 'else'
      doIt = -> 'it'
      if dat
        dat = doIt()
      else if something is 'else'
        dat = 'true'
      else
        dat = 'WTF'
      dat.should.be.equal 'true'

    it 'can take a reality check when looking into structures', ->
      johnnyDeep =
        is:
          almostAn: 'actors name'

      (if johnnyDeep?.has?.a?.cool?().beard? 'in that pirate movie'
        true
      else
        false).should.be.ok

    it 'can use questions to get to the happy place', ->
      here = undefined
      (here ? 'not here').should.be.equal 'here'

    it 'can be very compary', ->
      WTFSperMinute = 5
      okay = not (10 > WTFSperMinute > 1)
      okay.should.be.ok

    it 'can be unless it is not', ->
      WTF = 'not per second'
      (true unless not no and WTF is 'not per second').should.be.ok

    it "has a flippin' switch", ->
      day = 'HoustonDay'
      whatToDrink =
        switch day
          when 'monday', 'tuesday', 'wednesday', 'thursday' then 'coffee'
          when 'friday' then 'beer'
          when 'saturday' then 'MOAR beer'
          when 'sunday' then 'water'
          else 'tea'
      day.should.be.equal 'HoustonDay'
      whatToDrink.should.be.equal 'coffee'

    it 'has a flipless switch', ->
      politics = 'making sense'
      economicalInfluence = 0
      itIs =
        switch
          when politics? is 'making sense' then 'explosion'
          when politics? is true then 'explosion'
          when politics? is 'is a rigged game' and economicalInfluence > 90 then 'like it is'
      itIs.should.be.equal 'like it is'

  it 'tries and catches, finally', ->
    noSleep = -> throw new Error
    lieDown = -> 'insomnia'
    outcome = ''
    try
      outcome = noSleep()
    catch
      outcome = 'never here'
    finally
      outcome = lieDown()
    outcome.should.be.equal 'zZzZzZz'
