# waveglider-campbell-data
Reading in Campbell CR6 datalogger data from Polar Gliders Wave Gliders

Datasets:
- SPN1 pyranometer (downwelling shortwave radiation)
- CGR4 pyrgeometer (downwelling longwave radiation)
- Gill 3D R3-50 anemometer (3D wind speeds & sonic temperature)
- RBRCoda (sea temp, pressure, salinity, CODA temp and oxygen, Cyclops chlorophyll)

Before reading in the files into python, we need to convert the TOB3 `.dat` files into `.csv` files using the camp2ascii package (downloaded from https://github.com/ansell/camp2ascii)

1. Navigate to the downloaded camp2ascii folder on your local machine (note I made small modifications to the Makefile to allow for conversion on a Mac)

2. To run the conversion, you need to run: ./bin/camp2ascii "/Users/xduplm/Google Drive/My Drive/projects/waveglider-campbell-data/wg-test-data/PLD1_AVG94.dat" -t excel -d , > "/Users/xduplm/Google Drive/My Drive/projects/waveglider-campbell-data/wg-test-data/PLD1_AVG94.csvi" -- this converts the `.dat` files into `.csv` excel format which is straight forward to read in with `pandas` Python package

3. To do this for each file is time consuming, so to run all `.dat` files, I make a `./batch_camp2ascii.sh` script to run them all

4. The code `test_wg1169.ipynb` reads in the `.csv` into Python and checks their values. I am still working on getting the CGR4 pyrgeometer
