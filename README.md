# red-pandas

A small example project to build your experience with Git and Quarto


## Dependencies and Getting Started

Here’s how someone can pick up and use this project:

1. **Clone** the repository  

```{.bash}
git clone https://github.com/zakvarty/red-pandas.git
cd red-pandas
```

2. Install [Quarto](https://quarto.org/docs/get-started/) if you don’t already have it. 
You can check this in the terminal.

```{.bash}
quarto --version
## 1.6.42
```

3. Install [R](https://cran.r-project.org/)

4. Install any required R packagesdependencies. 

```{r}
dependencies <- c("tibble")
install.packages(dependencies)
```

5. Render the project. 

```{.bash}
quarto render reports/red-pandas.qmd
```


