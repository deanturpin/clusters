all: plots.csv plot.png

plot.csv:
	./random.sh > $@

plot.png: plot.csv plot.txt
	gnuplot plot.txt

clean:
	rm -f plot.csv

display: plot.png
	eog $<
