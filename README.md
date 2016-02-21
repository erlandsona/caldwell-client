# elm-static-site

Proof of concept static site generator from Elm files.

setup

```
npm install
elm-package install
```

To see an example, run

```bash
python3 crawl.py
chmod +x runner.sh
./runner.sh
```

This will take the Elm files from `examples`, and convert them to static views in the `output` folder.

## How it works

Goes through folder, find elm files.
Elm files currently must have a `view` function, but will change that. Or maybe that's a good thing, and forces you to have the `config` or `lib` stuff outside of your actual site code.

Either way, right now, if you're using the example folder, you need a `view : Html`. This is your entry point. This `Html` will be rendered as actual html into a file with the same name, but lowercase. E.g `Index.elm -> index.html`, `Blog.Index.elm` -> `Blog/index.elm`. Maybe folders should be lowercase too?