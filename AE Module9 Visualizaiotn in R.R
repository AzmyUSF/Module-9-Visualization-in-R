# Load necessary dataset from local path
avocado <- read.csv("C:/Users/azmy/OneDrive - University of South Florida/Desktop/avocado.csv")

# Convert Date column to Date format 
avocado$Date <- as.Date(avocado$Date)

# --- Basic Visualization without any additional package ---
plot(avocado$Date, avocado$AveragePrice, 
     main = "Avocado Average Price Over Time",    # Title
     xlab = "Date",                              # Label for x-axis
     ylab = "Average Price",                     # Label for y-axis
     pch = 20,                                  # Shape of the points
     col = "blue")                              # Color 

# --- Lattice Visualization ---
# Install and load the lattice package
#install.packages("lattice")
library(lattice)


# Lattice Visualization
# Scatter plot of AveragePrice vs TotalVolume
xyplot(AveragePrice ~ TotalVolume, data = avocado,
       main = "Average Price by Total Volume",
       xlab = "Total Volume", ylab = "Average Price",
       pch = 20, col = "darkgreen")


# --- ggplot2 Visualization ---
# Install and load ggplot2 package
#install.packages("ggplot2")
library(ggplot2)

# ggplot2 VisualizationA
# Scatter plot of AveragePrice vs TotalVolume
ggplot(avocado, aes(x = TotalVolume, y = AveragePrice)) +
  geom_point(color = "purple") +
  labs(title = "Average Price by Total Volume",
       x = "Total Volume", y = "Average Price")