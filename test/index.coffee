import chain from '../src/index'
import test from 'tape'

test 'chain', (t)=>
  class Ipc
    constructor:(@name)->
    invoke:(channel, a, b)->
      @name+"."+channel+"."+a+"."+b
  ipc = new Ipc("me")

  c = chain(ipc,ipc.invoke)
  t.equal "me.hello.world.is.ok",c.hello.world("is","ok")
  t.end()

