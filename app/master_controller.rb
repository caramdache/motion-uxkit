class MasterController < UXTableViewController
  CellID = 'CellID'
  def viewDidLoad
    super
    self.title = 'Master'
    self.tableView.registerClass(UXTableViewCell, forCellWithReuseIdentifier:CellID)
    #self.tableView.dataSource = self.tableView.delegate = self
    #self.tableView.reloadData
  end

  def numberOfSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection:section)
    3
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath:indexPath)
    cell.textLabel.text = "master #{indexPath.row}"
    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
    @slave ||= SlaveController.alloc.initWithStyle(1)
    navigationController.pushViewController(@slave, animated:true)
  end
end
