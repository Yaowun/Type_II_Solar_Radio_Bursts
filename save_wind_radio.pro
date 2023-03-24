openr, 1, './data/raw/WI_H1_WAV_255982.dat'

num = 50000
year = intarr(num) & month = bytarr(num) & day = bytarr(num)
hour = bytarr(num) & minute = bytarr(num) & second = fltarr(num)
RAD = fltarr(num, 512)
dum = ' '
yy = 1 & mm = 1b & dd = 1b ;year, month, day
h = 1b & m = 1b & s = 1. ;hour, minute, second
nn = 0 ;rows count
rr1=1. & rr2=1. & rr3=1. & rr4=1. & rr5=1. & rr6=1. & rr7=1. & rr8=1. & rr9=1. & rr10=1.
rr11=1. & rr12=1. & rr13=1. & rr14=1. & rr15=1. & rr16=1. & rr17=1. & rr18=1. & rr19=1. & rr20=1.
rr21=1. & rr22=1. & rr23=1. & rr24=1. & rr25=1. & rr26=1. & rr27=1. & rr28=1. & rr29=1. & rr30=1.
rr31=1. & rr32=1. & rr33=1. & rr34=1. & rr35=1. & rr36=1. & rr37=1. & rr38=1. & rr39=1. & rr40=1.
rr41=1. & rr42=1. & rr43=1. & rr44=1. & rr45=1. & rr46=1. & rr47=1. & rr48=1. & rr49=1. & rr50=1.
rr51=1. & rr52=1. & rr53=1. & rr54=1. & rr55=1. & rr56=1. & rr57=1. & rr58=1. & rr59=1. & rr60=1.
rr61=1. & rr62=1. & rr63=1. & rr64=1. & rr65=1. & rr66=1. & rr67=1. & rr68=1. & rr69=1. & rr70=1.
rr71=1. & rr72=1. & rr73=1. & rr74=1. & rr75=1. & rr76=1. & rr77=1. & rr78=1. & rr79=1. & rr80=1.
rr81=1. & rr82=1. & rr83=1. & rr84=1. & rr85=1. & rr86=1. & rr87=1. & rr88=1. & rr89=1. & rr90=1.
rr91=1. & rr92=1. & rr93=1. & rr94=1. & rr95=1. & rr96=1. & rr97=1. & rr98=1. & rr99=1. & rr100=1.
rr101=1. & rr102=1. & rr103=1. & rr104=1. & rr105=1. & rr106=1. & rr107=1. & rr108=1. & rr109=1. & rr110=1.
rr111=1. & rr112=1. & rr113=1. & rr114=1. & rr115=1. & rr116=1. & rr117=1. & rr118=1. & rr119=1. & rr120=1.
rr121=1. & rr122=1. & rr123=1. & rr124=1. & rr125=1. & rr126=1. & rr127=1. & rr128=1. & rr129=1. & rr130=1.
rr131=1. & rr132=1. & rr133=1. & rr134=1. & rr135=1. & rr136=1. & rr137=1. & rr138=1. & rr139=1. & rr140=1.
rr141=1. & rr142=1. & rr143=1. & rr144=1. & rr145=1. & rr146=1. & rr147=1. & rr148=1. & rr149=1. & rr150=1.
rr151=1. & rr152=1. & rr153=1. & rr154=1. & rr155=1. & rr156=1. & rr157=1. & rr158=1. & rr159=1. & rr160=1.
rr161=1. & rr162=1. & rr163=1. & rr164=1. & rr165=1. & rr166=1. & rr167=1. & rr168=1. & rr169=1. & rr170=1.
rr171=1. & rr172=1. & rr173=1. & rr174=1. & rr175=1. & rr176=1. & rr177=1. & rr178=1. & rr179=1. & rr180=1.
rr181=1. & rr182=1. & rr183=1. & rr184=1. & rr185=1. & rr186=1. & rr187=1. & rr188=1. & rr189=1. & rr190=1.
rr191=1. & rr192=1. & rr193=1. & rr194=1. & rr195=1. & rr196=1. & rr197=1. & rr198=1. & rr199=1. & rr200=1.
rr201=1. & rr202=1. & rr203=1. & rr204=1. & rr205=1. & rr206=1. & rr207=1. & rr208=1. & rr209=1. & rr210=1.
rr211=1. & rr212=1. & rr213=1. & rr214=1. & rr215=1. & rr216=1. & rr217=1. & rr218=1. & rr219=1. & rr220=1.
rr221=1. & rr222=1. & rr223=1. & rr224=1. & rr225=1. & rr226=1. & rr227=1. & rr228=1. & rr229=1. & rr230=1.
rr231=1. & rr232=1. & rr233=1. & rr234=1. & rr235=1. & rr236=1. & rr237=1. & rr238=1. & rr239=1. & rr240=1.
rr241=1. & rr242=1. & rr243=1. & rr244=1. & rr245=1. & rr246=1. & rr247=1. & rr248=1. & rr249=1. & rr250=1.
rr251=1. & rr252=1. & rr253=1. & rr254=1. & rr255=1. & rr256=1. & rr257=1. & rr258=1. & rr259=1. & rr260=1.
rr261=1. & rr262=1. & rr263=1. & rr264=1. & rr265=1. & rr266=1. & rr267=1. & rr268=1. & rr269=1. & rr270=1.
rr271=1. & rr272=1. & rr273=1. & rr274=1. & rr275=1. & rr276=1. & rr277=1. & rr278=1. & rr279=1. & rr280=1.
rr281=1. & rr282=1. & rr283=1. & rr284=1. & rr285=1. & rr286=1. & rr287=1. & rr288=1. & rr289=1. & rr290=1.
rr291=1. & rr292=1. & rr293=1. & rr294=1. & rr295=1. & rr296=1. & rr297=1. & rr298=1. & rr299=1. & rr300=1.
rr301=1. & rr302=1. & rr303=1. & rr304=1. & rr305=1. & rr306=1. & rr307=1. & rr308=1. & rr309=1. & rr310=1.
rr311=1. & rr312=1. & rr313=1. & rr314=1. & rr315=1. & rr316=1. & rr317=1. & rr318=1. & rr319=1. & rr320=1.
rr321=1. & rr322=1. & rr323=1. & rr324=1. & rr325=1. & rr326=1. & rr327=1. & rr328=1. & rr329=1. & rr330=1.
rr331=1. & rr332=1. & rr333=1. & rr334=1. & rr335=1. & rr336=1. & rr337=1. & rr338=1. & rr339=1. & rr340=1.
rr341=1. & rr342=1. & rr343=1. & rr344=1. & rr345=1. & rr346=1. & rr347=1. & rr348=1. & rr349=1. & rr350=1.
rr351=1. & rr352=1. & rr353=1. & rr354=1. & rr355=1. & rr356=1. & rr357=1. & rr358=1. & rr359=1. & rr360=1.
rr361=1. & rr362=1. & rr363=1. & rr364=1. & rr365=1. & rr366=1. & rr367=1. & rr368=1. & rr369=1. & rr370=1.
rr371=1. & rr372=1. & rr373=1. & rr374=1. & rr375=1. & rr376=1. & rr377=1. & rr378=1. & rr379=1. & rr380=1.
rr381=1. & rr382=1. & rr383=1. & rr384=1. & rr385=1. & rr386=1. & rr387=1. & rr388=1. & rr389=1. & rr390=1.
rr391=1. & rr392=1. & rr393=1. & rr394=1. & rr395=1. & rr396=1. & rr397=1. & rr398=1. & rr399=1. & rr400=1.
rr401=1. & rr402=1. & rr403=1. & rr404=1. & rr405=1. & rr406=1. & rr407=1. & rr408=1. & rr409=1. & rr410=1.
rr411=1. & rr412=1. & rr413=1. & rr414=1. & rr415=1. & rr416=1. & rr417=1. & rr418=1. & rr419=1. & rr420=1.
rr421=1. & rr422=1. & rr423=1. & rr424=1. & rr425=1. & rr426=1. & rr427=1. & rr428=1. & rr429=1. & rr430=1.
rr431=1. & rr432=1. & rr433=1. & rr434=1. & rr435=1. & rr436=1. & rr437=1. & rr438=1. & rr439=1. & rr440=1.
rr441=1. & rr442=1. & rr443=1. & rr444=1. & rr445=1. & rr446=1. & rr447=1. & rr448=1. & rr449=1. & rr450=1.
rr451=1. & rr452=1. & rr453=1. & rr454=1. & rr455=1. & rr456=1. & rr457=1. & rr458=1. & rr459=1. & rr460=1.
rr461=1. & rr462=1. & rr463=1. & rr464=1. & rr465=1. & rr466=1. & rr467=1. & rr468=1. & rr469=1. & rr470=1.
rr471=1. & rr472=1. & rr473=1. & rr474=1. & rr475=1. & rr476=1. & rr477=1. & rr478=1. & rr479=1. & rr480=1.
rr481=1. & rr482=1. & rr483=1. & rr484=1. & rr485=1. & rr486=1. & rr487=1. & rr488=1. & rr489=1. & rr490=1.
rr491=1. & rr492=1. & rr493=1. & rr494=1. & rr495=1. & rr496=1. & rr497=1. & rr498=1. & rr499=1. & rr500=1.
rr501=1. & rr502=1. & rr503=1. & rr504=1. & rr505=1. & rr506=1. & rr507=1. & rr508=1. & rr509=1. & rr510=1.
rr511=1. & rr512=1.
for i=1, 3 do readf, 1, dum
while ~eof(1) do begin
  readf, 1, dd, mm, yy, h, m, s, $
    rr1 ,rr2 ,rr3 ,rr4 ,rr5 ,rr6 ,rr7 ,rr8 ,rr9 ,rr10,$
    rr11 ,rr12 ,rr13 ,rr14 ,rr15 ,rr16 ,rr17 ,rr18 ,rr19 ,rr20,$
    rr21 ,rr22 ,rr23 ,rr24 ,rr25 ,rr26 ,rr27 ,rr28 ,rr29 ,rr30,$
    rr31 ,rr32 ,rr33 ,rr34 ,rr35 ,rr36 ,rr37 ,rr38 ,rr39 ,rr40,$
    rr41 ,rr42 ,rr43 ,rr44 ,rr45 ,rr46 ,rr47 ,rr48 ,rr49 ,rr50,$
    rr51 ,rr52 ,rr53 ,rr54 ,rr55 ,rr56 ,rr57 ,rr58 ,rr59 ,rr60,$
    rr61 ,rr62 ,rr63 ,rr64 ,rr65 ,rr66 ,rr67 ,rr68 ,rr69 ,rr70,$
    rr71 ,rr72 ,rr73 ,rr74 ,rr75 ,rr76 ,rr77 ,rr78 ,rr79 ,rr80,$
    rr81 ,rr82 ,rr83 ,rr84 ,rr85 ,rr86 ,rr87 ,rr88 ,rr89 ,rr90,$
    rr91 ,rr92 ,rr93 ,rr94 ,rr95 ,rr96 ,rr97 ,rr98 ,rr99 ,rr100,$
    rr101 ,rr102 ,rr103 ,rr104 ,rr105 ,rr106 ,rr107 ,rr108 ,rr109 ,rr110,$
    rr111 ,rr112 ,rr113 ,rr114 ,rr115 ,rr116 ,rr117 ,rr118 ,rr119 ,rr120,$
    rr121 ,rr122 ,rr123 ,rr124 ,rr125 ,rr126 ,rr127 ,rr128 ,rr129 ,rr130,$
    rr131 ,rr132 ,rr133 ,rr134 ,rr135 ,rr136 ,rr137 ,rr138 ,rr139 ,rr140,$
    rr141 ,rr142 ,rr143 ,rr144 ,rr145 ,rr146 ,rr147 ,rr148 ,rr149 ,rr150,$
    rr151 ,rr152 ,rr153 ,rr154 ,rr155 ,rr156 ,rr157 ,rr158 ,rr159 ,rr160,$
    rr161 ,rr162 ,rr163 ,rr164 ,rr165 ,rr166 ,rr167 ,rr168 ,rr169 ,rr170,$
    rr171 ,rr172 ,rr173 ,rr174 ,rr175 ,rr176 ,rr177 ,rr178 ,rr179 ,rr180,$
    rr181 ,rr182 ,rr183 ,rr184 ,rr185 ,rr186 ,rr187 ,rr188 ,rr189 ,rr190,$
    rr191 ,rr192 ,rr193 ,rr194 ,rr195 ,rr196 ,rr197 ,rr198 ,rr199 ,rr200,$
    rr201 ,rr202 ,rr203 ,rr204 ,rr205 ,rr206 ,rr207 ,rr208 ,rr209 ,rr210,$
    rr211 ,rr212 ,rr213 ,rr214 ,rr215 ,rr216 ,rr217 ,rr218 ,rr219 ,rr220,$
    rr221 ,rr222 ,rr223 ,rr224 ,rr225 ,rr226 ,rr227 ,rr228 ,rr229 ,rr230,$
    rr231 ,rr232 ,rr233 ,rr234 ,rr235 ,rr236 ,rr237 ,rr238 ,rr239 ,rr240,$
    rr241 ,rr242 ,rr243 ,rr244 ,rr245 ,rr246 ,rr247 ,rr248 ,rr249 ,rr250,$
    rr251 ,rr252 ,rr253 ,rr254 ,rr255 ,rr256 ,rr257 ,rr258 ,rr259 ,rr260,$
    rr261 ,rr262 ,rr263 ,rr264 ,rr265 ,rr266 ,rr267 ,rr268 ,rr269 ,rr270,$
    rr271 ,rr272 ,rr273 ,rr274 ,rr275 ,rr276 ,rr277 ,rr278 ,rr279 ,rr280,$
    rr281 ,rr282 ,rr283 ,rr284 ,rr285 ,rr286 ,rr287 ,rr288 ,rr289 ,rr290,$
    rr291 ,rr292 ,rr293 ,rr294 ,rr295 ,rr296 ,rr297 ,rr298 ,rr299 ,rr300,$
    rr301 ,rr302 ,rr303 ,rr304 ,rr305 ,rr306 ,rr307 ,rr308 ,rr309 ,rr310,$
    rr311 ,rr312 ,rr313 ,rr314 ,rr315 ,rr316 ,rr317 ,rr318 ,rr319 ,rr320,$
    rr321 ,rr322 ,rr323 ,rr324 ,rr325 ,rr326 ,rr327 ,rr328 ,rr329 ,rr330,$
    rr331 ,rr332 ,rr333 ,rr334 ,rr335 ,rr336 ,rr337 ,rr338 ,rr339 ,rr340,$
    rr341 ,rr342 ,rr343 ,rr344 ,rr345 ,rr346 ,rr347 ,rr348 ,rr349 ,rr350,$
    rr351 ,rr352 ,rr353 ,rr354 ,rr355 ,rr356 ,rr357 ,rr358 ,rr359 ,rr360,$
    rr361 ,rr362 ,rr363 ,rr364 ,rr365 ,rr366 ,rr367 ,rr368 ,rr369 ,rr370,$
    rr371 ,rr372 ,rr373 ,rr374 ,rr375 ,rr376 ,rr377 ,rr378 ,rr379 ,rr380,$
    rr381 ,rr382 ,rr383 ,rr384 ,rr385 ,rr386 ,rr387 ,rr388 ,rr389 ,rr390,$
    rr391 ,rr392 ,rr393 ,rr394 ,rr395 ,rr396 ,rr397 ,rr398 ,rr399 ,rr400,$
    rr401 ,rr402 ,rr403 ,rr404 ,rr405 ,rr406 ,rr407 ,rr408 ,rr409 ,rr410,$
    rr411 ,rr412 ,rr413 ,rr414 ,rr415 ,rr416 ,rr417 ,rr418 ,rr419 ,rr420,$
    rr421 ,rr422 ,rr423 ,rr424 ,rr425 ,rr426 ,rr427 ,rr428 ,rr429 ,rr430,$
    rr431 ,rr432 ,rr433 ,rr434 ,rr435 ,rr436 ,rr437 ,rr438 ,rr439 ,rr440,$
    rr441 ,rr442 ,rr443 ,rr444 ,rr445 ,rr446 ,rr447 ,rr448 ,rr449 ,rr450,$
    rr451 ,rr452 ,rr453 ,rr454 ,rr455 ,rr456 ,rr457 ,rr458 ,rr459 ,rr460,$
    rr461 ,rr462 ,rr463 ,rr464 ,rr465 ,rr466 ,rr467 ,rr468 ,rr469 ,rr470,$
    rr471 ,rr472 ,rr473 ,rr474 ,rr475 ,rr476 ,rr477 ,rr478 ,rr479 ,rr480,$
    rr481 ,rr482 ,rr483 ,rr484 ,rr485 ,rr486 ,rr487 ,rr488 ,rr489 ,rr490,$
    rr491 ,rr492 ,rr493 ,rr494 ,rr495 ,rr496 ,rr497 ,rr498 ,rr499 ,rr500,$
    rr501 ,rr502 ,rr503 ,rr504 ,rr505 ,rr506 ,rr507 ,rr508 ,rr509 ,rr510,$
    rr511 ,rr512,$
    format = '(2(I2,1x),I4,1x,2(I2,1x),G5.3,15x,512G23.5)'
  year[nn] = yy & month[nn] = mm & day[nn] = dd
  hour[nn] = h & minute[nn] = m & second[nn] = s
  for j=1, 512 do begin
    RAD[nn, j-1] = (scope_varfetch('rr'+strtrim(string(j), 1), level=1))
    if RAD[nn, j-1] eq 0 then RAD[nn, j-1] = !values.f_nan
  endfor
  nn = nn + 1
endwhile
close, 1
year = year[0:nn-1] & month = month[0:nn-1] & day = day[0:nn-1]
hour = hour[0:nn-1] & minute = minute[0:nn-1] & second = second[0:nn-1]
time = julday(month, day, year, hour, minute, second)
RAD = RAD[0:nn-1, 0:511] & RAD1 = RAD[*, 256:511] & RAD2 = RAD[*, 0:255]
freq1 = dindgen(256)*4000+20000 & freq2 = dindgen(256)*50000+1075000

save, time, filename = './data/wind_radio_time.save'
save, RAD1, filename = './data/wind_radio_RAD1.save'
save, RAD2, filename = './data/wind_radio_RAD2.save'
save, freq1, filename = './data/wind_radio_freq1.save'
save, freq2, filename = './data/wind_radio_freq2.save'

end