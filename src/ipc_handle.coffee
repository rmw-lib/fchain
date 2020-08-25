import {ipcMain} from 'electron'
import handle from './handle'
export default handle(ipcMain,ipcMain.handle)
