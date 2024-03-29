# N3 Builtin Functions

This is the template for the https://w3c.github.io/N3 website (builtin function section).

Current version: https://domel.github.io/n3builtins/specification/

Requirements are written in [Markdown](https://daringfireball.net/projects/markdown/) and transformed to HTML using the [Bikeshed preprocessor](https://tabatkins.github.io/bikeshed/).

# Requirements

These tools are required for testing and development of the documentation:

- [Jupyter](https://jupyter.org)
- Docker with a [Bikeshed](https://github.com/netwerk-digitaal-erfgoed/bikeshed-docker) image
- Python with modules (hint: `python -m pip install <module>`)
  - notebook
  - pandas
  - sparql_dataframe
  - urlib3
- [EYE](https://github.com/eyereasoner/eye)
- [rapper](https://librdf.org/raptor/rapper.html)

Note: when editing the `create-markdown.ipynb` Jupyter notebook, be sure to convert it to a Python file afterwards:

```
jupyter nbconvert --to script 'create-markdown.ipynb' --output 'create-markdown' 
```

# Spec

See : `spec/` folder.

## Makefile

### builtins.n3

- `make builtins` : generate a N3 `builtins.n3` file from `src/` input files
- `make valid` : validate all `src/` input files
- `make tidy` : generate builtins.tidy.n3 that is human-readable

### index.html

- `make index` : generate a `index.bs` document 
  
Choose one of:

- `make spec` : generate HTML `index.html` from `index.bs` (docker)
- `make watch` : run a watcher program on `index.bs` (continuous development)
- `make web` : generate HTML `index.html` from `index.bs` (without using docker)
