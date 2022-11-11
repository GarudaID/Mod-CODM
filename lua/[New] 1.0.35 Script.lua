---------------------------------------------------------------------------------------------
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(1239999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\nFound: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults()  end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) end end end
--- Script Body ---
MAIN = 1
function HOME()
gg.toast("GarudaID Best Github")
MENU = gg.multiChoice({
" Fix Crash ", ----1
" WallHack ", ----2
" Aimbot ", ----3
" No Reload ", ----4
" No Spread ", ----5
" Fast Scope ", ----6
" Magic Bullet ", ----7
" Redlight ", ----8
" CrossHair ", ----9
" [ EXIT ]" ----10
}, nil,(" https://kaixin.my.id"))
     
if MENU == nil then else
if MENU[1] == true then cheat1() end
if MENU[2] == true then cheat2() end
if MENU[3] == true then cheat3() end
if MENU[4] == true then cheat4() end
if MENU[5] == true then cheat5() end
if MENU[6] == true then cheat6() end
if MENU[7] == true then cheat7() end
if MENU[8] == true then cheat8() end
if MENU[9] == true then cheat9() end
if MENU[10] == true then EXIT() end
end
MAIN = -1
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- Values ----
function cheat1()
so=gg.getRangesList('libanogs.so')[1].start 
py=0x30a34
setvalue(so+py,4,-476053504)
gg.clearResults()
so=gg.getRangesList('libanogs.so')[1].start 
py=0x30a38
setvalue(so+py,4,-516948194)
gg.clearResults()
gg.toast(" Fix Crash Activated ")
end
----------------------------------------------------------
function cheat2() 
so=gg.getRangesList('libil2cpp.so')[1].start
py=0x18DA39C      
setvalue(so+py,4,0)
gg.clearResults()
gg.toast(" WallHack Activated ")
end
----------------------------------------------------------
function cheat3()
so=gg.getRangesList('libil2cpp.so')[1].start
py=0x6D4EA50      
setvalue(so+py,16,0)
gg.clearResults()
gg.toast(" Aimbot Activated ")
end
----------------------------------------------------------
function cheat4()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x2B8EF90     
setvalue(so+py,4,0)
gg.clearResults()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x2B8F028      
setvalue(so+py,4,0)
gg.clearResults()
gg.toast(" No Reload Activated ")
end
----------------------------------------------------------
function cheat5()
so=gg.getRangesList('libil2cpp.so')[1].start 
py=0x2BF80B4 
setvalue(so+py,16,1)
gg.clearResults()
so=gg.getRangesList('libil2cpp.so')[1].start 
py=0x2BE3E18 
setvalue(so+py,16,1)
gg.clearResults()
gg.toast(" No Spread Activated ")
end
----------------------------------------------------------
function cheat6()
so=gg.getRangesList('libil2cpp.so')[1].start 
py=0x28EBE64 
setvalue(so+py,16,0) 
gg.clearResults()
gg.toast(" Fast Scope Activated ")
end
----------------------------------------------------------
function cheat7()
gg.setRanges(32)
local SEARCH = {{1041462460, 0}, {1050924810, 4}}
local WRITE = {{1077936128, 0}}
local TYPE = 4
SearchWrite(SEARCH, WRITE, TYPE)
gg.clearResults()
gg.toast(" Magic Bullet Activated ")
end
----------------------------------------------------------
function cheat8()
gg.setRanges(32)
local SEARCH = {{4.0, 0}, {1.0, 4}, {1.0, 8}, {0, 16}, {3.0, 20}}
local WRITE = {{50, 0}, {1.0, 4}, {1.0, 8}, {0, 16}, {3.0, 20}}
local TYPE = 16
SearchWrite(SEARCH, WRITE, TYPE)
gg.clearResults()
gg.toast(" Redlight Activated ")
end
----------------------------------------------------------
function cheat9()
so=gg.getRangesList('libil2cpp.so')[1].start  
py=0x56D1D00
setvalue(so+py,16,0)
gg.toast(" Small CrossHair Activated ")
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- Exit ----
function EXIT()
gg.skipRestoreState()
gg.setVisible(true)
gg.clearResults()
gg.clearList()
os.exit()
end
--------------------------------------------------------------------
---Do Not Change👇
while true do 
if gg.isVisible(true) then
MAIN= 1
gg.setVisible(false)
end
if MAIN == 1 then
HOME()
end
end
--------------------------------------------------------------------

                                ------------ END -------------
                                