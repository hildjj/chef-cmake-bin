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
    <td><tt>['cmake-bin']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
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

Author:: YOUR_NAME (<YOUR_EMAIL>)
