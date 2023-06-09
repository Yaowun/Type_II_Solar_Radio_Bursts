time_range_plot = [$
  [julday(4, 2, 2019, 15, 40, 0), julday(4, 2, 2019, 16, 15, 0)],$
  [julday(4, 3, 2019, 16, 45, 0), julday(4, 3, 2019, 17, 15, 0)],$
  [julday(4, 3, 2019, 18, 55, 0), julday(4, 3, 2019, 19, 15, 0)],$
  [julday(4, 3, 2019, 22, 25, 0), julday(4, 3, 2019, 22, 50, 0)],$
  [julday(4, 4, 2019, 22, 15, 0), julday(4, 4, 2019, 22, 35, 0)],$
  [julday(4, 5, 2019, 20, 00, 0), julday(4, 5, 2019, 20, 30, 0)],$
  [julday(4, 5, 2019, 20, 25, 0), julday(4, 5, 2019, 20, 55, 0)],$
  [julday(4, 6, 2019, 07, 50, 0), julday(4, 6, 2019, 08, 20, 0)],$
  [julday(4, 6, 2019, 09, 50, 0), julday(4, 6, 2019, 10, 10, 0)],$
  [julday(4, 6, 2019, 10, 50, 0), julday(4, 6, 2019, 11, 20, 0)]]

time_range_event = [$
  [julday(4, 2, 2019, 15, 45, 0), julday(4, 2, 2019, 16, 10, 0)],$
  [julday(4, 3, 2019, 16, 58, 0), julday(4, 3, 2019, 17, 12, 0)],$
  [julday(4, 3, 2019, 18, 59, 0), julday(4, 3, 2019, 19, 08, 0)],$
  [julday(4, 3, 2019, 22, 33, 0), julday(4, 3, 2019, 22, 42, 0)],$
  [julday(4, 4, 2019, 22, 21, 0), julday(4, 4, 2019, 22, 31, 0)],$
  [julday(4, 5, 2019, 20, 07, 0), julday(4, 5, 2019, 20, 26, 0)],$
  [julday(4, 5, 2019, 20, 29, 0), julday(4, 5, 2019, 20, 49, 0)],$
  [julday(4, 6, 2019, 07, 56, 0), julday(4, 6, 2019, 08, 17, 0)],$
  [julday(4, 6, 2019, 09, 51, 0), julday(4, 6, 2019, 10, 05, 0)],$
  [julday(4, 6, 2019, 10, 52, 0), julday(4, 6, 2019, 11, 17, 0)]]
  
  save, time_range_plot, time_range_event, filename='./data/SRB_event.save'
  
  
  end