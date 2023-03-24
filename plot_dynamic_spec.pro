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

; plot
for i = 0, n_elements(time_range_event[0, *])-1 do begin
  idx_plot = where(time ge time_range_plot[0, i] and time le time_range_plot[1, i])
  t = time[idx_plot]
  y1 = rad1[idx_plot, *]
  y2 = rad2[idx_plot, *]
  
  idx_event = where(time ge time_range_event[0, i] and time le time_range_event[1, i])
  t_event = time[idx_event]
  freq1_fit = freq1_all[0:n_elements(t_event)-1, i]
  
  Window, i, xsize=1280, ysize=720
  dynamic_spec, t, y1, y2, freq1, freq2
  plots, t_event, freq1_fit, color=255, linestyle=2, thick=3
  write_png, './fig/dynamic_spec/dynamic_spec_'+string(i, '(I01)')+'.png', TVRD(/TRUE)
  wdelete, i
endfor


end