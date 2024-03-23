---
comments: true
---

<center>
<!-- ![](images/Machine Learning){ width="400" } -->
<h1>MACHINE LEARNING PROJECTS</h1>

</center>
<!-- LOGO s -->
<center>

![PyTorch](https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=for-the-badge&logo=PyTorch&logoColor=white)
![NumPy](https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-%233F4F75.svg?style=for-the-badge&logo=plotly&logoColor=white)
![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)
![Django](https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)
![OpenCV](https://img.shields.io/badge/opencv-%23white.svg?style=for-the-badge&logo=opencv&logoColor=white)
![Poetry](https://img.shields.io/badge/Poetry-%233B82F6.svg?style=for-the-badge&logo=poetry&logoColor=0B3D8D)

### **Machine Learning** Projects and Their **Short Descriptions**

</center>

</br>
## <b><span style='color:gray;'>:octicons-rocket-24: Full Stack Machine Learning</span></b>

### <b><span style='color:#fc8403; text-align:center'>ChatClarity</span></b>

<h4><i><span style='color:gray'>Whatsapp Chat Analyzer and Context Based Searching</span></i></h4>

[![GitHub](https://img.shields.io/badge/Github-Repository-97c446?logo=Github&logoColor=DAF7A6)](https://www.github.com/SoumyaCO/chatClarity)
[![Open Notebook](https://img.shields.io/badge/binder-View-006eca?logo=Jupyter&logoColor=#fc8803)]()

Here we have created a **web application** to analyze Whatsapp group chats. The Web application can generate the following statistics from exported group chat `(*.txt file)`

> 1. The most used words (in past _n_ number of days).
> 2. Most Active members (in past _n_ number of days).
> 3. Anomalies in message counts.
> 4. Username Based searching.
> 5. Context Based searching.

It is fully capable of handaling lots of text messages in a very less amount of time. Because we've used traditional ML methods to optimize the text file input into a tabular format using **RegEx** and **Pandas**. After we've used **Spacy** for **Named Entity Recognition** and **stopping words deletion**. Then using **Flask** we've taken query from _frontend_ (Made with **React** by [@ToukirAhmedKhan](https://github.com/BlackHeart786)) and by using **KNN** we've served the context based searched results.

![](https://github.com/SoumyaCO/chatClarity/raw/main/diagrams/home_page_cc.png){ width="340" }![](https://github.com/SoumyaCO/chatClarity/raw/main/diagrams/file_uploader_cc.png){ width="340" }

<span style="gray"><b>:octicons-graph-16: Improvements:</b></span>

Important messages seperation from group chit chats.

---

## <b><span style='color:gray;'>:octicons-beaker-24: Data Analytics</span></b>

### <b><span style='color:#fc8403; text-align:center'>Geospatial Mapping of Mammals' Habitats (UK)</span></b>

<h4><i><span style='color:gray'>Geospatial Analysis of Rare Mammals in UK, their possible range of habitats</span></i></h4>

[![GitHub](https://img.shields.io/badge/Github-Repository-97c446?logo=Github&logoColor=DAF7A6)](https://github.com/SoumyaCO/Rare-species-analysis-across-UK) [![Open Notebook](https://img.shields.io/badge/Kaggle-View-006eca?logo=Jupyter&logoColor=3094e7)](https://www.kaggle.com/code/soumyadipbhat/geospatial-mapping-of-mammals-habitat-with-folium)

Dataset contains mammal sighting in the UK from the **NBN Atlas** dataset. It includes geo-spacial information on where sightings have occured, as well as biological information on sighted animals in order to filter for specific taxonomies of animals. Data has been modified to removed redundant columns and anonymise the data.

> 1. Taken some functional approach inside notebooks for clean workflow
> 2. Lots of **Data Visualization** in order to get intricate informations
> 3. State/Province based Mammals' location analysis
> 4. Mapping the whole Uk and pointing out the mammal's habitat (and possible range with circle)

![](images/mammals_habitat_long.png){ width="700" }

![](https://www.kaggleusercontent.com/kf/143979774/eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..0lVXdNkn24u0MTJ0XJrQHQ.kGYO00Zx7m3CeXPJIbX-P_7fyZa1gqFVsCeEEUgzmmynKXE_qU-AaW39Nvk7BDfZtTsKYf96nQnGDoVyYbFLw0qDJ2qoqAA3UWFfbveI1lyWBr-wV1NCeSSBeERd1SG0GkBVHnFFvD-dK9lOcFbWWzGknegTS0ZQW7GqfBvqIkf9j9cEYWWsi5Eb28tl6DwLNs4_hpxh0sIwEwBRnjzGDfcBJBJrYMP8IEqeiXHYHBFVE_ZreeIof2NGkYuX4h3I0KckQOUTHyZD0lVC-tS47D3YloIfo_1JEuRSCPRfUgqQtLAMbj86GFuIAcMsuH7c-pQXQRLjhD7hgiYh9MlUFZcXUbhOdnSiNpEfd8AR86PsHbyHU-dOi1z-V5hQZII_RlOz7mXgB83rsq8NCnYa7h7wuscmTuWRBgzWjRZRiJyT5v4IHBi-uTtxqDVp1X9qcYEQ40e1MknDVlaZgeOvIjjJA4A7-lqFVpaSiXWyXibtDmTTnBVUIVDo3Wcr3qjjMzDDhb3i09vYNz1gJx9Jd7ae07_OSyBAumjK529EDTDG-rZtIfhbrddUZTC2LxG8knFmFcCim0YDIlF7SDVcu1AOr7qAbTckSp0sYh3uWZR4mrBROZjVPPleVAXcY0OoCFKu0hgLWE22QpNH_TsxukgU3eIO1YlY6c8x-mTZ6E0wQ0KkdCzunhYYlsahl4VBuc0VWdSF8kVUoUfEddhmuA.JjmAv468M_7hZr5EF3akhg/__results___files/__results___16_0.png){ width="700" }

---

### <b><span style='color:#fc8403; text-align:center'>Hotel Price Data Analysis (Bangalore, India) </span></b>

<h4><i><span style='color:gray'>Analysis of Hotel Price with respect to location, rating, tourism from <b>MakeMyTrip.com (Bangalore)</b></span></i></h4>

[![GitHub](https://img.shields.io/badge/Github-Repository-97c446?logo=Github&logoColor=DAF7A6)](https://github.com/SoumyaCO/Hotel-price-data-analysis) [![Open Notebook](https://img.shields.io/badge/Kaggle-View-006eca?logo=Jupyter&logoColor=3094e7)](https://www.kaggle.com/code/soumyadipbhat/data-analysis-with-hotel-price-data)

The dataset is available on kaggle you can take a look at the dataset: 🔗 [HERE](https://www.kaggle.com/datasets/andrewgeorgeissac/hotel-price-data-of-cities-in-india-makemytrip).

Analyzed this data to get some intricate details

> 1. hotel qualities
> 2. average people choice which kind of hotels
> 3. High rating actually increase number of customers or not
> 4. Average hotel price
> 5. Finding out important landmarks based on the hotel price and no of customers
>    and many more.

Steps:

- Cleaning the data - Renaming some columns, dropping unnecessary columns etc.
- Visualizing the missing values (with `seaborn` and `missingno` library)
- Plotting correlation between the data [like Price and Tax has a strong correlation etc.]
- Plotting data individually [like Places vs Price, Reviews vs Price etc.]
- Conclusion about the analysis.

![](images/hote_price_analysis.png){ width="700" }

---

## <b><span style='color:gray;'>:octicons-terminal-24: Data Science</span></b>

### <b><span style='color:#fc8403; text-align:center'>Diabetes Patient Classification</span></b>

<h4><i><span style='color:gray'>Predicting Diabetes with KNeighborsClassifier</span></i></h4>

[![GitHub](https://img.shields.io/badge/Github-Repository-97c446?logo=Github&logoColor=DAF7A6)](https://github.com/SoumyaCO/KNeighbors-classifier-diabetes) [![Open Notebook](https://img.shields.io/badge/Kaggle-View-006eca?logo=Jupyter&logoColor=3094e7)](https://www.kaggle.com/code/soumyadipbhat/diabetes-classification-with-kneighborsclassifier)

KNeighborsClassifier is a very powerful classification algorithms used to classify with non-linear boundaries. But this model requires some feature engineering:\ I've Performed some feature engineering to fit the data and get the most out of this model.

Imputed Missing values
Scaled the data to have equal importance while the training
Also after training the model to set the best hyperparameter I've used the most used method → `GridSearch`

![](https://github.com/SoumyaCO/KNeighbors-classifier-diabetes/blob/main/knn-image.png?raw=true){ width="700" }

---

### <b><span style='color:#fc8403; text-align:center'>Reverse Image Searching</span></b>

<h4><i><span style='color:gray'>Predicting Diabetes with KNeighborsClassifier</span></i></h4>

[![GitHub](https://img.shields.io/badge/Github-Repository-97c446?logo=Github&logoColor=DAF7A6)](https://github.com/SoumyaCO/reverse-image-searching) [![](https://camo.githubusercontent.com/f5e0d0538a9c2972b5d413e0ace04cecd8efd828d133133933dfffec282a4e1b/68747470733a2f2f636f6c61622e72657365617263682e676f6f676c652e636f6d2f6173736574732f636f6c61622d62616467652e737667)](https://colab.research.google.com/github/SoumyaCO/reverse-image-searching/blob/main/Reverse_Image_Search.ipynb)

## What is Reverse Image Searching?

Reverse image searching is a technique for finding images that are similar to a given image. It is useful for finding the original source of an image, finding different versions of an image, or finding information about an image.

## Uses cases

Reverse image searching can be used for a variety of purposes, such as:

> 1. Finding the original source of an image, such as a photo or painting
> 2. Finding different versions of an image, such as different sizes or crops
> 3. Finding information about an image, such as its subject matter or creator
> 4. Checking if an image is copyrighted
> 5. Finding out if someone is using your images without permission

![](images/reverse-image_searching.png){ width="700" }
