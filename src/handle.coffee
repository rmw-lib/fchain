func_null = =>

export default chain = (self, func, prefix="")=>
  new Proxy(
    func_null
    {
      get:(_, name)=>
        chain(self, func, prefix+name+".")
      apply:(target, _, args)=>
        args.unshift prefix[...-1]
        func.apply self, args
    }
  )
