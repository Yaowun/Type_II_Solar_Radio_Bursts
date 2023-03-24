restore, './data/wind_radio_freq1.save'
restore, './data/freq_drift_fitting.save'

; parameter
freq1 = freq1/10.^3
freq1_all = freq1_all/10.^3
num_col = N_elements(freq1_all[0,*])
num_row = N_elements(pass_time[*,0])

; set plotting
!P.BACKGROUND=255
!P.COLOR=0
device,decomposed=0

; plot frequency drift
window, 0, xsize=840, ysize=480
plot,[0,0],xrange=[0,20],yrange=[freq1[0],freq1[-1]],xstyle=1,ystyle=1,charsize=1.3,$
  color=fsc_color('Black'),title='Wind/Waves Type II Solar Radio Burst Freqency Drift',$
  xtitle='Elapsed Time (min)',ytitle='RAD1 Freq. (kHz)',/nodata
for i=0,num_col-1 do begin
  oplot,pass_time[*,i],freq1_all[*,i],color=fsc_color('Black'),linestyle=2,thick=1
endfor
X = findgen(num_row)
Yave = mean(freq1_all,dimension=2,/nan)
oplot,X,Yave,color = fsc_color('Black'),linestyle=0,thick=3
weights = 1.0/Yave
A = [600.0, -1.0, 100.0]
yfit = CURVEFIT(X, Yave, weights, A, SIGMA, FUNCTION_NAME='gfunct')
oplot,X,Yfit,color=fsc_color('Red'),linestyle=0,thick=3
plots,[.7,.78],[.85,.85],color=fsc_color('Black'),linestyle=2,thick=2,/normal
xyouts,.93,.84,'T!LII!NSRB events',color=fsc_color('Black'),charsize=1.5,alignment=1,/normal
plots,[.7,.78],[.78,.78],color=fsc_color('Black'),linestyle=0,thick=2,/normal
xyouts,.93,.77,'Average',color=fsc_color('Black'),charsize=1.5,alignment=1,/normal
plots,[.7,.78],[.71,.71],color=fsc_color('Red'),linestyle=0,thick=2,/normal
xyouts,.93,.7,'Fitting curve',color=fsc_color('Red'),charsize=1.5,alignment=1,/normal
xyouts,.93,.45,'f='+string(A[0],format='(f6.2)')+'e!E'+string(A[1],format='(f8.4)')+$
  't!N+'+string(A[2],format='(f6.2)'),color=fsc_color('Red'),charsize=2,charthick=2,alignment=1,/normal
write_png, './fig/freq_drift/freq_drift.png', TVRD(/TRUE)
wdelete, 0


end