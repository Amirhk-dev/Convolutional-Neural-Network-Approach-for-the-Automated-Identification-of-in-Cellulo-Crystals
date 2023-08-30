import cv2
from nucleus import rle_decode
import numpy as np
import csv
cells_file = open('results/submit_20220518_detected_cells/submit.csv')
cells_file_rects = open('results/submit_20220518_detected_cells_rectangles/submit_rectangles.csv')
crystalls_file = open('results/submit_20220518_detected_crystals/submit.csv')
crystalls_file_rects = open('results/submit_20220518_detected_crystals_rectangles/submit_rectangles.csv')

# read cells masks
csvreader_cells = csv.reader(cells_file)
cells_header = []
cells_header = next(csvreader_cells)
print(cells_header)
cells_mask_rows = []
for row in csvreader_cells:
    cells_mask_rows.append(row)
    print(row[0][0])
    print(row[0][1])
mask = rle_decode(cells_mask_rows[0][1], [512, 512])
mask = mask.astype('uint8')
# cv2.imwrite('mask2.png', mask*255)

