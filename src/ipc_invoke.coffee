import {ipcRenderer} from 'electron'
import invoke from './invoke'
export default invoke(ipcRenderer,ipcRenderer.invoke)
