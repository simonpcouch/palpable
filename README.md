# palpable

Palpable is an example [pal](https://github.com/simonpcouch/pal) extension 
package. It provides two pals, `"boop"` and `"wop"`, that are automatically 
registered with pal on package load. They're pretty silly; they just reply
"beep bop boop" and "wee wee wop" regardless of what you ask of them, 
respectively.

There are really only two non-boilerplate components to this R package:

* There's one markdown file per role in `inst/` (each created with 
  `prompt_new()`). 
* There's a call to `pal::directory_load()`
  in the package's `.onLoad()`, referencing the extension package's
  `system.file()`. This will automatically register `"beep"` and `"wop"` with
  pal when palpable is loaded.

## Installation

You can install the development version of palpable like so:

``` r
pak::pak("simonpcouch/palpable")
```

When users load the package, two new roles will be registered with the
pal package:

![A screen recording in RStudio. The pal addin is opened up and only the default pal roles are listed. Then, the package is loaded and the pal addin reopened, showing two new roles: boop and wop.](inst/examples.gif)

