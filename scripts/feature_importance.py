import pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split

# Load dataset
df = pd.read_csv('data/amazon_clean.csv')

# Convert rating_count to integer
df['rating_count'] = df['rating_count'].str.replace(',', '').astype(float)

# Prepare data for machine learning
X = df[['price_difference', 'discount_percentage', 'rating_count']].dropna()
y = df['rating']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train model
model = RandomForestRegressor()
model.fit(X_train, y_train)

# Display feature importance
importance = pd.Series(model.feature_importances_, index=X.columns)
importance.sort_values(ascending=False).plot(kind='bar', title="Feature Importance")