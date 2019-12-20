library(rmarkdown)
library(here)
library(rmarkdown)
output_dir <- "../EDSD2019data/docs"


render( here::here("index.Rmd"), output_dir = output_dir, 
        params = list(output_dir = output_dir))

render( here::here("Introductions.Rmd"), output_dir = output_dir, 
        params = list(output_dir = output_dir))

render( here::here("BigFlatFiles.Rmd"), output_dir = output_dir, 
        params = list(output_dir = output_dir))

render( here::here("MergeMania.Rmd"), output_dir = output_dir, 
        params = list(output_dir = output_dir))

render( here::here("GenealogicalData.Rmd"), output_dir = output_dir, 
       params = list(output_dir = output_dir))

