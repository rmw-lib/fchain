```
npm install -g fchain
```
or
```
yarn global add fchain
```

use example

```
import {ipcRenderer} from 'electron'
ipcRenderer.invoke("app.quit", [args1, args2])
```

=>

```
import {ipcRenderer} from 'electron'
import invoke from 'fchain/invoke'
ipc = invoke(ipcRenderer,ipcRenderer.invoke)

ipc.app.quit(args1, args2)
```

```
import {ipcMain} from 'electron'
import handle from 'fchain/handle'
ipc = handle(ipcMain,ipcMain.handle)

ipc.app.quit (args1, args2)->
  console.log @ # event
  console.log args1, args2
```


```
import ipc from 'fchain/ipc_handle'
```

```
import ipc from 'fchain/ipc_invoke'
```
