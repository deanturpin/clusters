all: plot.png

plot.csv:
	./random.sh > $@

plot.png: plot.csv
	gnuplot plot.txt

clean:
	rm -f plot.csv plot.png
