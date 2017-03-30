# UITableViewCell-indexPathZeroTopSeparator.swift

## about
UITableViewの先頭cell,つまりindexPath.row == 0のとき、セルのtopにseparatorを付けます。

## usage
```
if indexPath.row == 0 {
  cell.indexPathZeroTopSeparator(color: UIColor.red, inset: .middle, tableView: tableView)
}
```
