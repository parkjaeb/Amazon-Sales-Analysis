# 📦 Unlocking Amazon Sales Insights: A Data-Driven Approach

## 🔎 Exploring Product Ratings, Pricing, and Discounts

As a data enthusiast fascinated by consumer behavior, I embarked on this project to uncover patterns in Amazon product ratings and pricing strategies. The goal was to analyze the impact of pricing, discounts, and customer reviews on product performance, providing actionable insights for businesses and marketers.

With a focus on data-driven decision-making, I explored how discount percentages, price differences, and review counts influence product ratings. By analyzing over 1,000 Amazon products, I sought to answer key questions about consumer satisfaction and purchasing behavior.

**Source:** Kaggle (Amazon Product Ratings Dataset)

---

## 📊 How I Approached the Analysis

### 🔍 Understanding the Data
The dataset consists of **1,429 products** across multiple categories, capturing features like:

- ✔️ **Product Ratings** – Average customer rating per product  
- ✔️ **Number of Reviews** – The volume of customer feedback  
- ✔️ **Price Differences** – The gap between actual and discounted prices  
- ✔️ **Discount Percentage** – The level of markdown applied to products  
- ✔️ **Product Categories** – Grouping products by type  

To ensure high-quality analysis, I performed **data cleaning** steps such as handling missing values, formatting numerical fields, and creating new features like price difference and discount effectiveness.

---

## 🛠️ Feature Engineering: Strengthening the Insights

To better understand customer preferences, I introduced key derived features:

- 🚀 **Price Difference Analysis** – Measuring absolute price reductions  
- 📉 **Discount Effectiveness Score** – Evaluating how discounting impacts ratings  
- 📊 **Category-Wise Performance** – Identifying high- and low-performing product categories  

These enhancements helped segment products into meaningful clusters, enabling deeper analysis.

---

## 🔎 Key Findings: What Drives Customer Ratings?

### ⏳ More Reviews = Higher Ratings
🔸 Products with **higher review counts** tend to have **more stable and higher ratings**. This suggests that customer trust is built through social proof and engagement.

*(Insert image here: Review Count vs. Ratings)*  

---

### 📉 Big Discounts Don’t Always Mean High Ratings
🔸 A weak negative correlation (-0.16) exists between **discount percentage** and **customer ratings**.  
🔸 **Excessive discounts** may lead to skepticism about product quality.  

*(Insert image here: Discount Percentage vs. Ratings)*  

---

### 💰 High Price Differences = Higher Ratings
🔸 Products with **higher price differences (discounts > $20,000)** consistently received **better ratings**.  
🔸 This suggests that customers appreciate **substantial savings** over percentage-based discounts.  

*(Insert image here: Price Difference vs. Ratings)*  

---

### 🌟 Top Performing Categories & Product Segments

Through **clustering analysis**, three distinct product groups emerged:

- 🔵 **Budget-Friendly (Low Price Difference, Mixed Ratings)**  
  - Products with minimal price changes had **high rating variability** (2.0 - 5.0).  

- 🟡 **Best Value (Moderate Price Difference, High Ratings)**  
  - Products with moderate price differences ($10,000 - $20,000) had **consistently strong ratings (4.0+).**  

- 🟢 **Premium (High Price Difference, Top Ratings)**  
  - Luxury or premium products had **exceptional ratings (4.5+).**  

*(Insert image here: Product Clustering Insights)*  

---

## 📈 Strategic Recommendations for Amazon Sellers

### 🔴 Improve Customer Trust Through More Reviews
🚀 Encourage customers to leave reviews to build product credibility.  
🛒 Offer incentives such as small discounts on future purchases for verified reviews.  

### 💰 Rethink Discount Strategies
✔️ Avoid extreme discounts that **may signal lower quality** to customers.  
✔️ Instead, focus on **value-driven price differences** over percentage-based discounts.  

### 📍 Category-Specific Pricing & Positioning
🛍 **Luxury & Premium Products:** Market them as high-value items rather than discounted deals.  
📉 **Underperforming Categories:** Identify pain points (e.g., Electric Grinders had the lowest ratings) and improve product quality.  

---

## 🚀 Next Steps: Future Enhancements
This analysis uncovered fascinating trends in Amazon sales, but there’s more to explore! Moving forward, I aim to:

- 🔹 **Build machine learning models** to predict customer ratings based on pricing strategies.  
- 🔹 **Expand feature engineering** to include sentiment analysis from customer reviews.  
- 🔹 **Develop interactive dashboards** for dynamic category-wise insights.  

This project is just the beginning of my journey into **consumer analytics** and **e-commerce data science**. 