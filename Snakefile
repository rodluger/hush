# Render the config file
import jinja2
with open("showyourwork.yml", "w") as f:
    env = jinja2.Environment(loader=jinja2.FileSystemLoader("."))
    print(env.get_template("showyourwork.yml.jinja").render(), file=f)

    
# DEBUG
print("HACK")
with open("src/data/results.hdf.zenodo", "w") as f:
    print("https://zenodo.org/record/999999", file=f)
    
    
# User config
configfile: "showyourwork.yml"
    

# Import the showyourwork module
module showyourwork:
    snakefile:
        "showyourwork/workflow/Snakefile"
    config:
        config


# Use all default rules
use rule * from showyourwork
