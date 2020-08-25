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
