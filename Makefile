SRC_PATH = ../foil4g/tmp/opencellid.org/cell_towers.csv.gz
DST_PATH = cellid.pmtiles
GZCAT = gzcat

all: 
	$(GZCAT) ${SRC_PATH} | \
	tippecanoe -o ${DST_PATH} -f \
	-L'{"file": "", "format": "csv"}'

