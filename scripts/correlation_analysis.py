import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv('data/amazon_clean.csv')

# Convert rating_count to numeric
df['rating_count'] = df['rating_count'].str.replace(',', '').astype(float)

# Compute correlation matrix
correlation = df[['discount_percentage', 'rating', 'rating_count', 'price_difference']].corr()

# Plot correlation heatmap
sns.heatmap(correlation, annot=True, cmap='coolwarm')
plt.title('Feature Correlation Heatmap')
plt.show()