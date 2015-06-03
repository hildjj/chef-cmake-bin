# cmake-bin-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

* ubuntu
* centos

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cmake-bin']['version']</tt></td>
    <td>String</td>
    <td>Version to install (e.g. "3.2.3"), or LATEST for the latest git tag</td>
    <td><tt>LATEST</tt></td>
  </tr>
  <tr>
    <td><tt>['cmake-bin']['architecture']</tt></td>
    <td>String</td>
    <td>Currently only "x86_64" or "i386"</td>
    <td><tt>Derived from guest OS</tt></td>
  </tr>
  <tr>
    <td><tt>['cmake-bin']['platform']</tt></td>
    <td>String</td>
    <td>Currently only "Linux"</td>
    <td><tt>Derived from guest OS</tt></td>
  </tr>
</table>

## Usage

### cmake-bin::default

Include `cmake-bin` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[cmake-bin::default]"
  ]
}
```

## License and Authors

Author:: Joe Hildebrand
