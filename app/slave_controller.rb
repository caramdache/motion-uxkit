class SlaveController < UXTableViewController
  CellID = 'CellID'
  def viewDidLoad
    super
    self.title = 'Slave'
    self.tableView.registerClass(UXTableViewCell, forCellWithReuseIdentifier:CellID)
    #self.tableView.dataSource = self.tableView.delegate = self
    #self.tableView.reloadData
  end

  def numberOfSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection:section)
    10
  end

  CellID = 'CellID'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath:indexPath)
    cell.textLabel.text = "slave #{indexPath.row}"
    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
  end
end
