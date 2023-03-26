# Type_II_Solar_Radio_Bursts
## 專案介紹
本專案使用 IDL 程式語言，利用 Wind / WAVES 的 RAD1 及 RAD2 資料分析 2019 年 4 月第二型太陽無線電暴事件，並根據分析結果探討其頻漂特性。

## 專案技術
IDL 8.7

## 資料夾說明
* data - Wind 衛星資料放置處
* fig - 圖片放置處
  * dynamic_spec - 動態頻譜圖片
  * freq_drift - 頻漂擬合圖片
* report - 報告檔案放置處
  * progress - 進度報告
  * proposal - 計劃書報告
  * results - 結果報告  

## 實作
### 太陽無線電暴
太陽無線電暴(Solar Radio Burst)是一種在動態頻譜圖中隨時間變化的結構(圖 1)，可分為第一至第五型太陽無線電暴(Ganse et al. 2012)，不同類型的太陽無線電暴在頻譜圖中所呈現的特性不太一樣，本次專題所研究的第二型太陽無線電暴，可看出其在動態頻譜圖中會隨時間由高頻漂移至低頻，且漂移速率相對於第三型太陽無線電暴緩慢，頻漂持續時間約 5 至 15 分鐘。通常認為第二型太陽無線電暴的形成與震波有關，諸如行星際震波(Interplanetary Shock Wave)或是日冕物質拋射誘發震波(CME driven shock wave)皆有可能引發第二型太陽無線電暴。
![solar radio burst classification](./fig/solar_radio_bursts_classification.png)
