# Tensors Basics and Linear Regression

### Machine Learning and Deep Learning Series

<a id="0"></a> <br>
# Table of Contents 

 1. [Prerequisite](#0)
 1. [Tensors and vectors](#1)
    1. [Why use tensors?](#1.1)
    1. [Difference b/w Tensors and Vectors](#1.2)
 1. [Why use PyTorch](#2)
    1. [PyTorch Installation](#2.1)
    1. [Basics of PyTorch](#2.2)
 1. [Linear Regression](#3) 

<a id='0'></a>
### Prerequisite:
> 1. Minimum Understanding of Vectors, Linear Algebra, Matrix
> 2. Intermediate Knowledge in Python (list slicing, indexing etc ..)
> 3. Google Colab Account/Kaggle Account

<a id="1"><a/>
### Tensors and Vectors

![Different Tensors](https://visagetechnologies.com/app/uploads/2022/08/Tensors.png)
_Credit: [visagetechnologies.com](https://visagetechnologies.com/tensors-in-computer-vision/)_

__Definition:__ A Tensor is a finite table of neumerical values indexing along several dimensions.

- 0d tensor --> it's a scalar (e.g. _5_)
- 1d tensor --> it's vector
- 2d tensor --> it's a matrix (e.g. grascale image, DataFrame)
- 3d tensor --> it can be an Image (coloured)
- 4d tensor --> video (a sequence of multi channel images)
- and so on ..

<a id='1.1'></a>
#### Why we use Tensors?
From simple matrix multiplication to complex convolutions and pooling in CNNs, it is used everywhere

- Through Tensors we can represent more diverse datatypes
- Manipulating data through this structure is very fast in CPUs and GPUs


<a id='1.2'></a>
#### Difference b/w Tensors and Vectors
![Vectors vs tensors](videos/tensor_vs_Vector.gif)

The "dimension" of a __vector__ in linear algebra is its number of coefficients, 

while the "dimension" of a __tensor__ is the number of indeices to specify one of its coefficients.

<a id='2'></a>
### Why use PyTorch

1. We can make the calculations on CPU and GPUs
2. Automatic Gradient Calculation (more on this later)
3. More cutomisable controls over the program
4. Optimizers
5. Data I/O

<a id='2.1'></a>
#### PyTorch Installation:

![PyTorch Installing](images/pytoch_installation.png)

> 1. Go to the [Official PyTorch Website](https://pytorch.org/get-started/locally/)
> 2. Select your platform (options)
> 3. Copy the Command and paste it in the terminal

<a id='2.2'></a>
#### Basics of PyTorch


```python
# import the PyTorch Library
import torch
```


```python
# Check the version
torch.__version__
```




  `'2.2.1'`




```python
# Also you can check for GPU availability
torch.cuda.is_available()
```




  `False`



I am using an M1 Mac so `Cuda` is not available. But there is an accelerator called mps (it runs on mac GPU)


```python
# Check for mps 
torch.backends.mps.is_available()
```




  `True`



__Basic Tensor declaration__


```python
t1 = torch.tensor([2, 3, 4])
t1
```




  `tensor([2, 3, 4])`




```python
# 2d tensor
t2 = torch.tensor([[2, 3, 4],
                 [5, 6, 8]])
t2
```




  `tensor([[2, 3, 4],`
            `[5, 6, 8]])`




```python
# We can determine the size of a tensor by `size` method
t1.size(), t2.size()
```




  `(torch.Size([3]), torch.Size([2, 3]))`




```python
# Similarly we can get their number of dimensions also
print(f"Dimension of t1: {t1.dim()}\nDimension of t2: {t2.dim()}")
```

  `Dimension of t1: 1`

  `Dimension of t2: 2`


It provides aggregation functions like sum, mean etc.


```python
t1.sum()
```




  `tensor(9)`




```python
t2.sum()
```




`tensor(28)`



We can see it returns a 0 dimensional tensor. To get it in form of a scalar we can use `.item()` method.


```python
t2.sum().item()
```
  `28`



It offers elementwise operations unlike a python list (and like numpy, but it has GPU acceleration)


```python
x_list = [10., 20., 30.]
y_list = [[1., 3., 4.]]
x = torch.tensor([10., 20., 30.])
y = torch.tensor([1., 3., 4.])
print(f"PyTorch Tensor Output: {x + y}\nPython List Output: {x_list + y_list}")
```

  `PyTorch Tensor Output: tensor([11., 23., 34.])`

  `Python List Output: [10.0, 20.0, 30.0, [1.0, 3.0, 4.0]]`


As NumPy we can have random tensors too.


```python
x = torch.randint(10, (2, 4))  #<---- (range, (shape))
x
```
  `tensor([[6, 4, 2, 4],`
            `[7, 7, 3, 5]])`



<a id='3'></a>
### Linear Regression

For Linear Regression we assume that our features (X) depends on y linearly, and try to fit a line with approprieate slope and bias values.

In order to explain this I'm going to take a small toy dataset.


```python
import pandas as pd   #<--- for data manipulations
import matplotlib.pyplot as plt
```


```python
data = pd.read_csv('systolic-blood-pressure-vs-age.csv')
data.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>age</th>
      <th>blood_pressure</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>39</td>
      <td>144</td>
    </tr>
    <tr>
      <th>1</th>
      <td>47</td>
      <td>220</td>
    </tr>
    <tr>
      <th>2</th>
      <td>45</td>
      <td>138</td>
    </tr>
    <tr>
      <th>3</th>
      <td>47</td>
      <td>145</td>
    </tr>
    <tr>
      <th>4</th>
      <td>65</td>
      <td>162</td>
    </tr>
  </tbody>
</table>
</div>



If we plot a graph we can notice a linear relationship between the `age` and `blood_pressure`


```python
data.plot(kind='scatter', x='age', y='blood_pressure', figsize=(6, 4));
```

    
![png](images/output_37_1.png)
    


Also the data is not entirely linear, it has some noise and also some outliers as we can see in the plot.

<img src='images/plot_outlier.png' style="height:300px;"/>

Now we have to define the model (linear regressor) which is very simple
The equation of the model is:

### y = w x + b
where,

- w --> weight (slope)
- b --> bias (offset)

First we initialized with a random value (for now just take it as zero).

And plot the line, calculate the loss either.. MSE (mean squared error) or MAE (mean absolute error))

![loss_reg_](videos/reg_loss_.gif)
