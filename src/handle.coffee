func_null = =>

export default chain = (self, func, prefix="")=>
  new Proxy(
    func_null
    {
      get:(_, name)=>
        chain(self, func, prefix+name+".")
      apply:(target, _, next)=>
        func.call self, prefix[...-1], (event, args)->
          next.apply event, args
    }
  )
