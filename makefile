all: plot.png

plot.csv:
	./random.sh > $@

plot.png: plot.csv plot.txt
	gnuplot plot.txt

clean:
	rm -f plot.csv plot.png

display: plot.png
	eog $<
