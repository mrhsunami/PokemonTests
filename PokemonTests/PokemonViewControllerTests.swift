//
//  PokemonTests.swift
//  PokemonTests
//
//  Created by Sam Meech-Ward on 2018-02-20.
//  Copyright © 2018 lighthouse-labs. All rights reserved.
//

import XCTest
@testable import Pokemon

class PokemonViewControllerTests: XCTestCase {
  
  var viewController: ViewController!
  
  override func setUp() {
    super.setUp()
    
    viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
  }
  
  func test_viewDidLoad_ShouldPopulateTheTableViewWithPokemon() {
    let _ = viewController.view
    viewController.viewDidLoad()
    
    let numberOfRows = viewController.tableView.numberOfRows(inSection: 0);
    XCTAssert(numberOfRows > 1);
  }
  
}
