## PROYECTO DUOLINGO -- HOW FAST DO YOU FORGET?

## Notas

# La carga de datos la puse en comentarios, para cuando la necesites.
# Revisé el trabajo que teniamos y necesitamos 3 variables númericasy una categorica para explicar otra númerica.
# Mi propuesta es utilizar lag_days, history_seen y history_correct para explicar p_recall, y como categórica usar . Ignorar la existencia 
# Los histogramas no dan mucha información por si solos


## Librerias

#install.packages("readx1")   #Instalación lectura excel (?????????)
library(summarytools)         #Herramientas Calculo Media, quantiles,etc
library(ggplot2)              #Diagramas de frecuencia


## Carga de datos:

#datos_word_difficulty <- read.csv("C:\\Users/nisan/OneDrive - ESCUELA COLOMBIANA DE INGENIERIA JULIO GARAVITO/MAESTRÍA CIENCIA DE DATOS/MODELOS ESTADÍSTICOS/PROYECTO/word_difficulty.csv")
#datos_learning_traces_sample <- read.csv("C:\\Users/nisan/OneDrive - ESCUELA COLOMBIANA DE INGENIERIA JULIO GARAVITO/MAESTRÍA CIENCIA DE DATOS/MODELOS ESTADÍSTICOS/PROYECTO/learning_traces_sample.csv")
datos_word_difficulty <- read.csv("D:\\Downloads/word_difficulty.csv")
datos_learning_traces_sample <- read.csv("D:\\Downloads/learning_traces_sample.csv")
datos_forgetting <- read.csv("D:\\Downloads/forgetting_curve.csv")

## Visulización de los datos

View(datos_word_difficulty)
View(datos_learning_traces_sample)
View(datos_forgetting)
# Para revisar los primeros datos: head(datos_word_difficulty)  (dado por GPT)

## Variable Objetivo
#   p_recall:  Porcentaje de aciertos sobre apariciones de la palabra en la sesión
#descr(datos_learning_traces_sample$p_recall)


## Variables Númericas

#   history_seen: Número de veces que el estudiante había visto la palabra anteriormente
descr(datos_learning_traces_sample$history_seen)
#   history_correct: Número de veces que el estudiante había respondido correctamente esa palabra anteriormente	
descr(datos_learning_traces_sample$history_correct)
#   session_seen:	Número de veces que vio la palabra durante la sesión actual
descr(datos_learning_traces_sample$session_seen)
#   session_correct:	Número de veces que respondió correctamente durante la sesión actual
descr(datos_learning_traces_sample$session_correct)
#   lag_days: Días transcurridos a la última práctica de la palabra 
descr(datos_learning_traces_sample$lag_days)


## Variables Categoricas

#   Ui_language: Idioma en el que la persona tiene la interfaz
(language_ui =table(datos_learning_traces_sample$ui_language))
#   Learning_language: Idioma que la persona está aprendiendo
(Learning_language =table(datos_learning_traces_sample$learning_language))
#   Surface_form: la palabra en cuestión que se va aprender	
(Surface_form =table(datos_learning_traces_sample$surface_form))
#   Pos: Categorías gramaticales (sustantivos, adjetivos...)
(Pos =table(datos_learning_traces_sample$pos))


## Histogramas

#history_seen
hist(datos_learning_traces_sample$history_seen,
     main = "Distribución de Frecuencia: Visualizaciones previas", 
     xlab = "Visualizaciones previas", 
     ylab = "Frecuencia", 
     col = "lightblue")

#history_correct
hist(datos_learning_traces_sample$history_correct,
     main = "Distribución de Frecuencia: Visualizaciones correctas", 
     xlab = "Visualizaciones correctas", 
     ylab = "Frecuencia", 
     col = "lightblue")

#session_seen
hist(datos_learning_traces_sample$session_seen,
     main = "Distribución de Frecuencia: Visualizaciones en la última sesión", 
     xlab = "Visualizaciones en la última sesión", 
     ylab = "Frecuencia", 
     col = "lightblue")

#session_correct
hist(datos_learning_traces_sample$session_correct,
     main = "Distribución de Frecuencia: Visualizaciones correctas\n en la última sesión", 
     xlab = "Visualizaciones correctas en la última sesión", 
     ylab = "Frecuencia", 
     col = "lightblue")

#lag_days
hist(datos_learning_traces_sample$lag_days,
     main = "Distribución de Frecuencia: Dias tras la última sesión", 
     xlab = "Dias tras la última sesión", 
     ylab = "Frecuencia", 
     col = "lightblue")

#p_recall
hist(datos_learning_traces_sample$p_recall,
     main = "Distribución de Frecuencia: Dias tras la última sesión", 
     xlab = "Dias tras la última sesión", 
     ylab = "Frecuencia", 
     col = "lightblue")


## Gráficas Distribuciones de Frecuencia

# lag-days
ggplot(datos_learning_traces_sample, aes(x = lag_days)) +
  geom_histogram(bins = 30) +
  labs(
    title = "Distribución de días desde la última práctica",
    x = "Días desde la última práctica",
    y = "Frecuencia"
  ) +
  theme_minimal()


# Test Xi-Cuadrado Independencia de variables
#chisq.test(table(datos_learning_traces_sample$,datos_learning_traces_sample$)) (arreglar)
# Completar


## Boxplot Variables Numéricas en categorias por Variables Categóricas

#ui_Language
#learning_language
#surface_form
#pos


## Análisis Modelo ANOVA

# Calculo promedios entre categorias
# Calculo residuales
# Pruebas para normalidad de residuales
# Pruebas para homogeneidad de varianza entre categorias


## Análisis Modelo Lineal Polinomico

# Coeficiente Pearson
# Coeficiente Spearman
