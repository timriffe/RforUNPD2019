library(rmarkdown)
output_dir <- "../RforUNPD2019/docs"


render.this <- "../RforUNPD2019/index.Rmd"
render(render.this, output_dir = output_dir, 
	   params = list(output_dir = output_dir))

render.this <- "../RforUNPD2019/Day1.Rmd"
render(render.this, output_dir = output_dir, 
	   params = list(output_dir = output_dir))

render.this <- "../RforUNPD2019/Day2.Rmd"
render(render.this, output_dir = output_dir, 
	   params = list(output_dir = output_dir))

render.this <- "../RforUNPD2019/Day3.Rmd"
render(render.this, output_dir = output_dir, 
	   params = list(output_dir = output_dir))

render.this <- "../RforUNPD2019/Day4.Rmd"
render(render.this, output_dir = output_dir, 
	   params = list(output_dir = output_dir))

render.this <- "../RforUNPD2019/Day5.Rmd"
render(render.this, output_dir = output_dir, 
	   params = list(output_dir = output_dir))