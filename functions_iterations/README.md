# Coding Outreach Group Summer Workshop 2023
# Functions & Iterations in R
07/20/2023

__**Content creator:**__ Beth Smedley
__**Content editor:**__ Katie Jobson

## Description
  

## Prerequisites
This workshop demands that users:
1. have the R programming language downloaded, which can be accessed here:(https://archive.linux.duke.edu/cran/)
2. have the R Studio user interface downloaded, which can be accessed here:(https://www.rstudio.com/products/rstudio/download/#download)
3. have the packages listed in the following R script installed: (See index.html for instructions)
4. have a proficiency with the R programming language
5. have a basic familiarity with plotting data in R; previous primers can be accessed here: (https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2021/tree/main/data-visualization-in-r) 

## Set Up (do before the workshop)
1. Download the R Markdown script from github
2. Download the dataset for the workshop
3. Download the relevant packages (See below)
    
## Workshop objectives:
-   Learn when to use functions, and how to make custom functions

-   Function style and housekeeping

-   When to use iteration, loops and their alternatives

-   Apply knowledge of functions and iteration to load all files from a folder of data and perform quality assurance measures

## Workshop materials:
- [Notebook Viewer](https://tu-coding-outreach-group.github.io/cog_summer_workshops_2023/functions_iterations/index.html)

## What We Won't Cover:
We will not be covering data wrangling, or how to format the data to in way that facilitates visualization. This will be covered in a preceding workshop designed by Ginny Ulichney. We also will not be covering how to conduct statistical tests of the data that we will be visualizing. Lastly, we will not be reviewing many basic visualizations like bar graphs or regression plots that I had covered in the previous year's workshop.  

## Outline
| Section | Description | Time |
| --- | --- | --- |
| Intro | Why use functions and iterations? | 15 min|
| Functions | A basic function and faded examples | 15 min |
| Applied knowledge | Folder of files and how to deal with them | 15 min |
| Additional info | Troubleshooting and more | 15 min |
| Q & A | --- | 5 min |

## Additional Resources
https://rstats.wtf/debugging-r-code.html

http://adv-r.had.co.nz/Exceptions-Debugging.html

https://support.posit.co/hc/en-us/articles/205612627-Debugging-with-the-RStudio-IDE

### Packages
```tidyverse``` - [a collection of packages that are always incredibly helpful no matter what project you're working on; sometimes the only package I load (contains ggplot2](https://www.tidyverse.org/packages/)

```vembedr``` - [Used to embed video urls within the script](https://cran.r-project.org/web/packages/vembedr/vignettes/vembedr.html)

```gapminder``` - [used for some data analysis](https://cran.r-project.org/web/packages/gapminder/index.html)

```glue``` - [package contained within tidyverse that helps interpret strings as literals - also very helpful for data analysis of text!](https://glue.tidyverse.org/)

```datasets``` - [package where public data is stored](https://github.com/huggingface/datasets)
