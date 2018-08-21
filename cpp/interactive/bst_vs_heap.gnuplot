#!/usr/bin/env gnuplot
set terminal png size 1024, 1024
set output "bst_vs_heap.png"
set multiplot layout 3,1 title "Heap vs BST insert time"
set xlabel "size"
set ylabel "nanoseconds"
set title "Heap"
plot "bst_vs_heap.dat" using 1:2 notitle
set title "Heap (zoom)"
set yrange [0:25]
plot "bst_vs_heap.dat" using 1:2 notitle
set yrange [*:*]
set title "BST"
plot "bst_vs_heap.dat" using 1:3 notitle
