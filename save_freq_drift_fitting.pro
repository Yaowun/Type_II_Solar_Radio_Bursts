restore, './data/wind_radio_time.save'
restore, './data/wind_radio_RAD1.save'
restore, './data/wind_radio_freq1.save'
restore, './data/SRB_event.save'

nan = !values.f_nan
num_col = n_elements(time_range_event[0,*])
num_row_max = round(max(time_range_event[1,*] - time_range_event[0,*])*1440)
freq1_all = fltarr(num_row_max, num_col)*nan
pass_time = fltarr(num_row_max, num_col)*nan

for i=0, num_col-1 do begin
  idx_event = where(time ge time_range_event[0,i] and time le time_range_event[1,i])
  t_event = time[idx_event]
  RAD1_fit = fltarr(n_elements(t_event), n_elements(freq1))
  freq1_fit = fltarr(n_elements(t_event))
  for j=0, n_elements(t_event)-1 do begin
    RAD1_fit[j,*] = gaussfit(freq1, RAD1[idx_event[j],*])
    fitmax = max(RAD1_fit[j,*], fitpos)
    freq1_fit[j] = freq1[fitpos]
  endfor
  num_row_fit = n_elements(freq1_fit)
  pass_time[0:num_row_fit-1,i] = round((t_event - t_event[0])*1440)
  freq1_all[0:num_row_fit-1,i] = freq1_fit
endfor

save, pass_time, freq1_all, filename='./data/freq_drift_fitting.save'


end