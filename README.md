# TimeSeriesR

This repo contains the materials for the ARCH 249 Module 3. 

During the class will be shown how to work with date and time with R. We will use the Tidyverse programming style and deepen the Lubridate library tools to: 

1) describe a date-time object properties (e.g. format, time-zone, etc.); 
2) create a date-time object for time series analysis in R; 
3) manipulate time series data and its limitations (e.g. downscale to monthly averaging, upscaling using interpolation techniques *seasonality); 
4) predict new data using a forecasting model (e.g. ARIMA); 
5) visualization of time series data using the ggplot2 library. During the class we will use some real-world example dataset (e.g. WMO, EPlus).

Equipment necessary for the students: personal computer. No needs to have R installed. We will use the Jupyter Notebook hosted at: 
<https://datahub.berkeley.edu/>.

Follow the instruction to get into your Berkeley account and once logged into your JupyterHub environment:

- from *Files* open: *New > Terminal*

```{sh}
cd
mkdir -p timeSeriesR_Apr2022/data
cd timeSeriesR_Apr2022/data/
wget https://github.com/theRosyProject/TimeSeriesR/blob/main/Archive.zip?raw=true
mv Archive.zip\?raw\=true MRG_2021.zip
unzip MRG_2021.zip
exit
```

And we should be ready to start!
