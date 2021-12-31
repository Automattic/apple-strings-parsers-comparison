A repo comparing different parser tools for Apple's `.strings` files.

### `apfel` vs `apstrings`

```
# apfel

>>> Keys count:
976
>>> Value for key 'today'
{"hoy"=>"Today"}
>>> Value for key 'No limit', which we know is duplicated
{"No limit"=>"Placeholder of the cell text field in Download limit"}

# apstrings

>>> Keys count:
977
>>> Value for key 'today'
{"hoy"=>""}
>>> Value for key 'No limit', which we know is duplicated
{"No limit"=>""}
```

The correct number of unique keys is 977 as can be verified with `cat Localizable.strings | sed -n s/'"\(.*\)" = ".*";'/'\1'/p | uniq -c | wc -l`. `apstrings` wins.

The key missing from `apfel` is:

> The Google account \"%@\" doesn't match any account on WordPress.com

I guess the escape sequence got it confused?

On the other hand, `apfel` correctly adds the comments to the objects for each key.

Neither seem to raise an error on duplicated key, which is a problem for us since that's exactly what we want to guard against.
