# -*- coding: utf-8 -*-
"""Untitled0.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1oD7yCCveLGGURjVTBHEGjt_SH5svhFHP
"""

from google.colab import files
import pandas as pd
uploaded=files.upload()
#memanggil dan menampilkan dataset
data_gaga = pd.read_csv('/content/titanic.csv.csv')
print(data_gaga)



data1 = data_gaga.loc[:,['Age','Pclass','Survived']]
print(data1)

data2 = data_gaga[['Age', 'Pclass', 'Survived']]
data2.plot(title='Persebaran Data', x='Age', y='Pclass', kind='scatter', c='Survived', colormap='Paired')

#memanipulasi data jumlah penumpang berdasarkan group Pclass
data3 = data_gaga[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
penumpang=data3.groupby('Pclass')['Name'].nunique()
print('Jumlah Penumpang:\n', penumpang)

#memfilter data penumpang yang selamat berdasarkan pclass
data4 = data_gaga[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
notsurvivedpassanger=data4['Sex'].loc[data_gaga['Survived']==0]
print('Penumpang yang tidak survived:\n', notsurvivedpassanger.value_counts())
survivedpassanger=data4['Sex'].loc[data_gaga['Survived']==1]
print('\nPenumpang yang survived:\n', survivedpassanger.value_counts())

data_tugas = data_gaga[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
kelamin=data_tugas.groupby('Sex')['Name'].nunique()
print('Jumlah kelamin:\n', kelamin)

#memfilter data penumpang yang selamat berdasarkan pclass
gagahkun = data_gaga[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
notsurvivedpassanger=gagahkun['Sex'].loc[data_gaga['Survived']==0]
print('Penumpang Mati:\n', notsurvivedpassanger.value_counts())
survivedpassanger=gagahkun['Sex'].loc[data_gaga['Survived']==1]
print('\nPenumpang gajadi mati:\n', survivedpassanger.value_counts())