//
//  TrieNode.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 4/4/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

public class TrieNode<Key: Hashable> {

  public var key: Key?
  public weak var parent: TrieNode?
  public var children: [Key: TrieNode] = [:]
  public var isTerminating = false

  public init(key: Key?, parent: TrieNode?) {
    self.key = key
    self.parent = parent
  }
}
