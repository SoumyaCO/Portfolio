---
comment: true
---
### <b><span style='color:#fc8403; text-align:center'>CIFAR-10 Image classification</span></b>
<h4><i><span style='color:gray'>This is an implementation from the book Deep Learning for Vision System¶</span></i></h4>

[![Open Notebook](https://img.shields.io/badge/Kaggle-View-006eca?logo=Jupyter&logoColor=3094e7)](https://www.kaggle.com/code/soumyadipbhat/cifar-10-image-classification-with-a-robust-cnn)

Here I've implemented a robust CNN with BatchNormalization, regularization and many more concepts.

The exact keras implementation is here. Step-by-step overview

> 1. Import dependencies
> 2. get the data ready for training
>> 3. Download the data from the Keras library
>> 4. Split the data into train, validate and test datasets
>> 5. Normalize the data
>> 6. One-hot encoding the labels
> 3. Build the model architecture
>> 1. Deeper neural network to increase the learningccapacity
>> 2. dropout layers
>> 3. L2 regularization to our CONV layers
>> 4. Batch normalization layers
> 4. Train the model
> 5. Evaluate the model
> 6. Plot the learning curve