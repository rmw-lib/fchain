import invoke from '../src/invoke'
import test from 'tape'

test 'invoke', (t)=>
  class Ipc
    constructor:(@name)->
    invoke:(channel, args)->
      @name+"."+channel+"."+args.join('.')
  ipc = new Ipc("me")

  c = invoke(ipc,ipc.invoke)
  t.equal "me.hello.world.is.ok",c.hello.world("is","ok")
  t.end()

