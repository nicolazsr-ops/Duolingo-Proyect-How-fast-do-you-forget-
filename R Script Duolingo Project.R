## PROYECTO DUOLINGO -- HOW FAST DO YOU FORGET?

install.packages("readx1")

## Vamos a cargar nuestos dataframes:

datos_word_difficulty <- read.csv("C:\Users/nisan/OneDrive - ESCUELA COLOMBIANA DE INGENIERIA JULIO GARAVITO/MAESTRÍA CIENCIA DE DATOS/MODELOS ESTADÍSTICOS/PROYECTO/word_difficulty.csv")
datos_learning_traces_sample <- read.csv("C:/Users/nisan/OneDrive - ESCUELA COLOMBIANA DE INGENIERIA JULIO GARAVITO/MAESTRÍA CIENCIA DE DATOS/MODELOS ESTADÍSTICOS/PROYECTO/learning_traces_sample.csv")

#necesitamos llamar a la librería
library(summarytools)

## revisar los primeros datos: head(datos_word_difficulty)
 
View(datos_word_difficulty)
View(datos_learning_traces_sample)

#Variable Númericas datos_learning_traces_sample

##delta	Tiempo, en segundos, desde la última vez que se practicó esa palabra	✅ Sí
descr(datos_learning_traces_sample$lag_days)

library(ggplot2)

ggplot(datos_learning_traces_sample, aes(x = lag_days)) +
  geom_histogram(bins = 30) +
  labs(
    title = "Distribución de días desde la última práctica",
    x = "Días desde la última práctica",
    y = "Frecuencia"
  ) +
  theme_minimal()

##history_seen	Número de veces que el estudiante había visto la palabra anteriormente	✅ Sí

descr(datos_learning_traces_sample$history_seen)

##history_correct	Número de veces que el estudiante había respondido correctamente esa palabra anteriormente	✅ Sí

descr(datos_learning_traces_sample$history_correct)

##session_seen	Número de veces que vio la palabra durante la sesión actual	✅ Sí

descr(datos_learning_traces_sample$session_seen)

##session_correct	Número de veces que respondió correctamente durante la sesión actual

descr(datos_learning_traces_sample$session_correct)

#variables Categoricas

##Ui_language	Idioma en el que la persona tiene la interfaz	✅ Sí

(language_ui =table(datos_learning_traces_sample$ui_language))

##Learning_language	Idioma en el que la persona tiene la interfaz	✅ Sí

(Learning_language =table(datos_learning_traces_sample$learning_language))

##Surface_form la palabra en cuestión que se va aprender	✅ Sí

(Surface_form =table(datos_learning_traces_sample$surface_form))

## Pos Categorías gramaticales (sustantivos, adjetivos...)	✅ Sí

(Pos =table(datos_learning_traces_sample$pos))

##Hola





