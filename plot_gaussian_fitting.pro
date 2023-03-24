restore, './data/wind_radio_time.save'
restore, './data/wind_radio_RAD1.save'
restore, './data/wind_radio_RAD2.save'
restore, './data/wind_radio_freq1.save'
restore, './data/wind_radio_freq2.save'
restore, './data/SRB_event.save'
restore, './data/freq_drift_fitting.save'

; set plotting
!P.BACKGROUND = 255
!P.COLOR = 0
loadct, 40
r = 255
g = 255
b = 255
tvlct, r, g, b, 255
device, decomposed = 0

SRB_event_ID = 0
tn = 5

idx_plot = where(time ge time_range_plot[0, SRB_event_ID] and time le time_range_plot[1, SRB_event_ID])
t = time[idx_plot]
y1 = RAD1[idx_plot, *]
y2 = RAD2[idx_plot, *]

idx_event = where(time ge time_range_event[0, SRB_event_ID] and time le time_range_event[1, SRB_event_ID])
tp = idx_event[tn]
t_event = time[idx_event]
freq1_fit = freq1_all[0:n_elements(t_event)-1, SRB_event_ID]

; plot spectrum
Window, 0, xsize=1280, ysize=720
dynamic_spec, t, y1, y2, freq1, freq2
plots, t_event, freq1_fit, color=255, linestyle=2, thick=3
plots, [time[tp], time[tp]], [freq1[0], freq1[-1]], thick=3, color=255
write_png, './fig/dynamic_spectrum.png', TVRD(/TRUE)
wdelete, 0

; plot
Window, 1, xsize=480, ysize=480
plot, freq1, RAD1[tp, *], xrange=[freq1[0], freq1[-1]], yrange=[0, 5], xstyle=1, ystyle=1,$
  linestyle=1, thick=2, charsize=1.2, title='Wind/Waves Gaussian Fitting',$
  xtitle = 'RAD1 Freq. (Hz)', ytitle='Power log!L10!N (V!E2!N/kHz)'
oplot, freq1, gaussfit(freq1, RAD1[idx_event[tn], *]), linestyle=0, thick=2
caldat, time[tp], m, d, y, h, n, s
ay = string(y, '(I4.2)')
am = string(m, '(I2.2)')
ad = string(d, '(I2.2)')
ah = string(h, '(I2.2)')
an = string(n, '(I2.2)')
xyouts, .2, .88, ay+'/'+am+'/'+ad+' '+ah+':'+an,charsize=1.2, /normal
plots,[.2, .25],[.83, .83], linestyle=1, thick=2, /normal
xyouts, .28, .82, 'Wind/Waves Data', /normal
plots, [.2, .25], [.77, .77], linestyle=0, thick=2, /normal
xyouts,.28, .76, 'Gaussian fitting', /normal
write_png, './fig/gaussian_fitting.png', TVRD(/TRUE)
wdelete, 1


end