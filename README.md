# waveglider-campbell-data
Reading in Campbell CR6 datalogger data from Polar Gliders Wave Gliders

Datasets:
- SPN1 pyranometer (downwelling shortwave radiation)
- CGR4 pyrgeometer (downwelling longwave radiation)
- Gill 3D R3-50 anemometer (3D wind speeds & sonic temperature)
- RBRCoda (sea temp, pressure, salinity, CODA temp and oxygen, Cyclops chlorophyll)

Before reading in the files into python, I converted the TOB3 `.dat` files into `.csv` files using the camp2ascii package (downloaded from https://github.com/ansell/camp2ascii).

1. I navigated to the downloaded camp2ascii folder on my local machine (note I made small modifications to the Makefile to allow for conversion on a Mac)

2. I tested the conversion using ./bin/camp2ascii "/Users/xduplm/Google Drive/My Drive/projects/waveglider-campbell-data/wg-test-data/PLD1_AVG94.dat" -t excel -d , > "/Users/xduplm/Google Drive/My Drive/projects/waveglider-campbell-data/wg-test-data/PLD1_AVG94.csvi". This converted the `.dat` files into `.csv` excel format which I could then read in with `pandas` in Python

3. To do this for each file is time consuming, so I batch ran all the `.dat` files using a shell script `./batch_camp2ascii.sh`

4. I then loaded the code and sanity checked the data in `test_wg1169.ipynb`. This notebook reads in the `.csv` into Python and checks their values, some plots are made. I am still working on converting the CGR4 pyrgeometer raw volts into radiation values following https://cdn.hach.com/1XMCM0ZF/at/49f6jk5zbr5t34v376f328x/KippZonen_Manual_Pyrgeometer_CGR4_V1401.pdf (see Section 2.4) 
