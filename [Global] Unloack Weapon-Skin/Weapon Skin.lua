function setvalue(address,flags,value) tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libil2cpp.so')[1].start 
py=0x39D22A0      
setvalue(so+py,4,-476053503) 
py=0x39D22A4     
setvalue(so+py,4,-516948194) 
py=0x39D2360      
setvalue(so+py,4,-476053503) 
py=0x39D2364     
setvalue(so+py,4,-516948194)
gg.toast("GarudaID")