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
import fchain from 'fchain'
ipc = chain(ipcRenderer,ipcRenderer.invoke)

ipc.app.quit(args1, args2)
```
