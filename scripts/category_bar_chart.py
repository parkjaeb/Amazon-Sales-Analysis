import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv('../data/amazon_clean.csv')

# Get the lowest 3 categories based on average rating
category_avg_rating = df.groupby("Category_shorten")["rating"].mean().sort_values()
bottom_category_names = category_avg_rating.index[:3]
filtered_data = df[df["Category_shorten"].isin(bottom_category_names)]

# Horizontal bar chart
plt.figure(figsize=(10, 6))
sns.barplot(y='Category_shorten', x='rating', data=filtered_data, order=bottom_category_names, ci=None, palette="coolwarm", orient='h')
plt.title('Average Ratings for Lowest 3 Categories')
plt.xlabel('Average Rating')
plt.ylabel('Category')
plt.show()