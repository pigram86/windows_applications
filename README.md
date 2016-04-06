# windows_applications-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['windows_applications']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### windows_applications::default

Include `windows_applications` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[windows_applications::default]"
  ]
}
```

## License and Authors

Author:: Todd Pigram (<todd@toddpigram.com>)
