# Load necessary modules
import math
import sys
from pylab import *
from matplotlib.backends.backend_pdf import PdfPages
import numpy

# Define Postprocessor data
x = np.array([1.21e2, 4.41e2, 1.681e3, 6.561e3, 2.5921e4, 1.03041e5])
y = np.array([2.359249e0, 3.09398e-1, 8.861951e-2, 2.297902e-2, 5.797875e-3, 1.452813e-3])

# Create y data for the ideal
y_ideal = 100*y[0]*numpy.power(sqrt(x),-2)

# Create the figure and plot the data
figure(figsize=(10,6))
plot(sqrt(x), y, 'o', sqrt(x), y_ideal, '-k', markersize=12, lw=3)

# Make the plot a log plot
gca().set_yscale('log')
gca().set_xscale('log')

# Create the slope annotation
plot([100,100], [0.1,0.024], '-k', lw=1)
plot([50 ,100], [0.1,0.1], '-k', lw=1)
text(70, 0.11, '1', size=18)
text(104, 0.045, '2', size=18)

# Add axis labels
xlabel('Dofs',{'fontsize':20})
ylabel('Error',{'fontsize':20})

# Adjust tick mark fonts
for xtick in  gca().xaxis.get_major_ticks():
    xtick.label.set_fontsize(18)

for ytick in gca().yaxis.get_major_ticks():
    ytick.label.set_fontsize(18)

# Apply grid marks
grid(True)
grid(True, which='minor', color='b')

# Show the file
tight_layout()
savefig('ex14-conv-rate.pdf')
show()
