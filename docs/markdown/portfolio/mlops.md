### <b><span style='color:#fc8403; text-align:center'>ChatClarity</span></b>
<h4><i><span style='color:gray'>Whatsapp Chat Analyzer and Context Based Searching</span></i></h4>

[![GitHub](https://img.shields.io/badge/Github-Repository-97c446?logo=Github&logoColor=DAF7A6)](https://www.github.com/SoumyaCO/chatClarity)
[![Open Notebook](https://img.shields.io/badge/binder-View-006eca?logo=Jupyter&logoColor=#fc8803)]()

Here we have created a __web application__ to analyze Whatsapp group chats. The Web application can generate the following statistics from exported group chat `(*.txt file)`
> 1. The most used words (in past _n_ number of days).
> 2. Most Active members (in past _n_ number of days).
> 3. Anomalies in message counts.
> 4. Username Based searching.
> 5. Context Based searching.

It is fully capable of handaling lots of text messages in a very less amount of time. Because we've used traditional ML methods to optimize the text file input into a tabular format using __RegEx__ and __Pandas__. After we've used __Spacy__ for __Named Entity Recognition__ and __stopping words deletion__. Then using __Flask__ we've taken query from _frontend_ (Made with __React__ by [@ToukirAhmedKhan](https://github.com/BlackHeart786)) and by using __KNN__ we've served the context based searched results.

![](https://github.com/SoumyaCO/chatClarity/raw/main/diagrams/home_page_cc.png){ width="340" }![](https://github.com/SoumyaCO/chatClarity/raw/main/diagrams/file_uploader_cc.png){ width="340" }