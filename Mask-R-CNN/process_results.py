import cv2
from nucleus import rle_decode
import numpy as np
import csv
crystalls_file = open('results/submit_20220518_detected_crystals/submit.csv')
crystalls_file_rects = open('results/submit_20220518_detected_crystals_rectangles/submit_rectangles.csv')

# read crystals masks
csvreader_crystals = csv.reader(crystalls_file)
crystals_header = []
crystals_header = next(csvreader_crystals)
print(crystals_header)
crystals_mask_rows = []
for row in csvreader_crystals:
    crystals_mask_rows.append(row)
    print(row[0][0])
    print(row[0][1])
mask = rle_decode(crystals_mask_rows[0][1], [512, 512])
mask = mask.astype('uint8')
cv2.imwrite('mask2.png', mask*255)
