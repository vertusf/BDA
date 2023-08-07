# Load the required libraries
library(dplyr)
library(tidyr)
library(ggplot2)

# Read the CSV file
word_corpus <- read.csv("C:\\Users\\DANIEL\\Downloads\\Uni\\Sem 4\\BDA in the Cloud\\word_corpus.csv", stringsAsFactors = FALSE)

#group by pos_tag and summarize word frequency
result <- word_corpus %>%
  group_by(pos_tag) %>%
  summarize(total_frequency = n())

# Plot the histogram with tilted x-axis labels
ggplot(result, aes(x = pos_tag, y = total_frequency)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Distribution of POS Tags",
       x = "POS Tag",
       y = "Frequency") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

rm(list=ls())