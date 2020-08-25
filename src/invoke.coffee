func_null = =>

export default chain = (self, func, prefix="")=>
  new Proxy(
    func_null
    {
      get:(_, name)=>
        chain(self, func, prefix+name+".")
      apply:(target, _, args)=>
        func.call self, prefix[...-1], args
    }
  )
