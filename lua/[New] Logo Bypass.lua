function prog() end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

--killAntiChat
so = gg.getRangesList('libanogs.so')[1].start 
py = 0x30a38
setvalue(so+py,4,-476053504)

so = gg.getRangesList('libanogs.so')[1].start 
py = 0x30a34
setvalue(so+py,4,-516948194)

--fix crash All Ver
so = gg.getRangesList('libanogs.so')[1].start 
py = 0x308c4
setvalue(so+py,4,0)

so = gg.getRangesList('libanogs.so')[1].start 
py = 0x308cc
setvalue(so+py,4,0)

so = gg.getRangesList('libanogs.so')[1].start 
py = 0x308c8
setvalue(so+py,4,0)

gg.alert("done")