# waveglider-campbell-data
Reading in Campbell CR6 datalogger data from Polar Gliders Wave Gliders

Before reading in the files into python, we need to convert the TOB3 ´.dat´ files into ´.csv´ files using the camp2ascii package

1. Navigate to the camp2ascii folder (downloaded from https://github.com/ansell/camp2ascii but note that I made small modifications to the Makefile to allow for conversion on a Mac)

2. To run the conversion, you need to run: ./bin/camp2ascii "/Users/xduplm/Google Drive/My Drive/projects/waveglider-campbell-data/wg-test-data/PLD1_AVG94.dat" -t excel -d , > "/Users/xduplm/Google Drive/My Drive/projects/waveglider-campbell-data/wg-test-data/PLD1_AVG94.csvi"

3. To do this for each file is time consuming, so to run all .dat files, I make a ´./batch_camp2ascii.sh´ script to run them all      
