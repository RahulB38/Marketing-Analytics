import pandas as pd
import nltk
import re
from nltk.sentiment import SentimentIntensityAnalyzer

nltk.download("vader_lexicon")

df = pd.read_csv("customer_reviews.csv")

sia = SentimentIntensityAnalyzer()

def clean_text(text):
    text = str(text).lower()
    text = re.sub(r'http\S+', '', text)
    text = re.sub(r'[^a-zA-Z\s]', '', text)
    text = re.sub(r'\s+', ' ', text).strip()
    return text

df["CleanReview"] = df["ReviewText"].apply(clean_text)

df["SentimentScore"] = df["CleanReview"].apply(
    lambda x: sia.polarity_scores(x)["compound"]
)

def sentiment(score, rating):
    if score >= 0.05:
        if rating >= 4:
            return "Positive"
        elif rating == 3:
            return "Mixed"
        else:
            return "Contradictory"

    elif score <= -0.05:
        if rating <= 2:
            return "Negative"
        elif rating == 3:
            return "Mixed"
        else:
            return "Contradictory"

    else:
        if rating >= 4:
            return "Positive"
        elif rating <= 2:
            return "Negative"
        else:
            return "Neutral"

df["Sentiment"] = df.apply(
    lambda x: sentiment(x["SentimentScore"], x["Rating"]),
    axis=1
)

def confidence(score):
    score = abs(score)

    if score >= 0.75:
        return "Very High"

    elif score >= 0.50:
        return "High"

    elif score >= 0.25:
        return "Medium"

    else:
        return "Low"

df["Confidence"] = df["SentimentScore"].apply(confidence)

df.to_csv("customer_reviews_sentiment.csv", index=False)

print(df.head())
