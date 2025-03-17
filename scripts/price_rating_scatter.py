import pandas as pd
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv('../data/amazon_clean.csv')

# Convert rating_count to numeric if needed
df['rating_count'] = df['rating_count'].str.replace(',', '').astype(float)

# Scatter plot for price difference vs. rating
plt.figure(figsize=(10, 6))
df.plot.scatter(x='price_difference', y='rating', alpha=0.5)
plt.title('Price Difference vs. Rating')
plt.xlabel('Price Difference')
plt.ylabel('Rating')
plt.show()