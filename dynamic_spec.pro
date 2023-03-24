;+
; NAME:
;   dynamic_spec
;   
; PURPOSE:
; 
;     Plot the dynamic spectrum of the radio burst by using RAD1 and RAD2
;     loaded on Wind spacecraft.
; 
; AUTHOR:
;   
;   中央大學 大氣4B 張耀文
; 
; CATEGORY:
;     Graphics display.
; 
; CALLING SEQUENCE:
;     plot_spec
; 
; INPUTS:
;     t : Time array.
;     y1: RAD1 power.
; 
;-

pro dynamic_spec, t, y1, y2, freq1, freq2
  ;set time tick
  xticks = round((t[-1]-t[0])*24*60/5)
  delta = findgen(xticks+1)*(t[-1]-t[0])/xticks+t[0]
  timlbl = strarr(xticks+1)
  for k = 0, xticks do begin
    caldat, delta[k], m, d, y, h, n
    if k eq 0 then begin
      date = string(y,'(I4.2)')+'/'+string(m,'(I2.2)')+'/'+string(d,'(I2.2)')
    endif
    timlbl[k] = string(h,'(I2.2)') + ':' + string(n,'(I2.2)')
  endfor
  blanklbl = replicate(' ',xticks + 1)
  
  ; set parameter
  ; time
  nx = n_elements(t)
  xp = findgen(nx)*(t[-1]-t[0])/(nx-1)+t[0]
  xs =  interpol(findgen(nx),t,xp)
  
  ; RAD
  RADmin = 0
  RADmax = 5
  y2min = freq2[0]
  y2max = freq2[-1]
  ny2 = n_elements(freq2)
  y2p = findgen(ny2)*(y2max-y2min)/(ny2-1)+y2min
  y2s =  interpol(findgen(ny2),freq2,y2p)
  nan = !values.f_nan
  image2 = interpolate(y2,xs,y2s,missing=nan,/grid)
  log_y2 = 10*alog10(image2)
  scaled2 = bytscl(log_y2,min=RADmin,max=RADmax,top=254)
  y1min = freq1[0]
  y1max = freq1[-1]
  ny1 = n_elements(freq1)
  y1p = findgen(ny1)*(y1max-y1min)/(ny1-1)+y1min
  y1s =  interpol(findgen(ny1),freq1,y1p)
  image1 = interpolate(y1,xs,y1s,missing=nan,/grid)
  log_y1 = 10*alog10(image1)
  scaled1 = bytscl(log_y1,min=RADmin,max=RADmax,top=254)
  
  ; plot figure
  !p.multi=[0,1,2]
  plot,[0,0],xrange=[t[0],t[-1]],yrange=[y2min,y2max],$
    xstyle=1,ystyle=1,ytitle='RAD2 Freq. (Hz)',$
    xticklen=-0.02,yticklen=-0.01,xticks=xticks,xtickname=blanklbl,$
    xminor=5,position=[.1,.6,.9,.93],charsize=1.5,/nodata
  plot,[0,0],xrange=[t[0],t[-1]],yrange=[y1min,y1max],$
    xstyle=1,ystyle=1,xtitle='UT (hh:mm)',ytitle='RAD1 Freq. (Hz)',$
    xticklen=-0.02,yticklen=-0.01,xticks=xticks,xtickname=timlbl,$
    xminor=5,position=[.1,.13,.9,.6],charsize=1.5,/nodata
  
  !p.multi=0
  xyouts,.5,.95,'Wind/WAVES',alignment=0.5,charsize=3,charthick=3,/normal
  tvimage,scaled2,position=[.1,.6,.9,.93],/noerase
  tvimage,scaled1,position=[.1,.13,.9,.6],/noerase
  colorbar,range=[RADmin,RADmax],title='Power log!l10!n (V!e2!n/kHz)',$
    charsize=1.5,position=[.93,.13,.95,.93],Divisions=RADmax-RADmin,$
    minor=5,/vertical,/right
  xyouts,100,20,date,charsize=1.5,/device

end
