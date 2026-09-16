# swift-format-issue

Project that reproduces a configuration issue with Swift 6.4.

After updating to Xcode 27, it brought with it the Swift 6.3 -> 6.4 upgrade too.

When I run `swift format lint . --recursive` on existing projects they fail with error: `<unknown>: error: Unable to read configuration for Package.swift: missing key 'orderedImports.shouldGroupImports'`.
This appears to be because the configuration parsing is strict, requiring all or nothing for `orderedImports`.

Work around was to run `swift format dump-configuration` to get the new missing values, the main change being from:

```json
"orderedImports" : {
  "includeConditionalImports" : false
}
```

to

```json
"orderedImports" : {
  "includeConditionalImports" : false,
  "shouldGroupImports" : true
}
```
