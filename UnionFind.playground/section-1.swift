// Playground - noun: a place where people can play

import UIKit

//Quick Find
class QuickFindUF {
    var id : [Int]
    
    init(id: [Int]) {
        self.id = id
    }
    
    //Each object equal to itself at beginning
    func quickFindUF(N: Int) {
        for i in 0..<N {
            self.id.append(i)
        }
    }
    
    //Check to see if p == q
    func connected(p: Int, q: Int) -> Bool {
        return self.id[p] == self.id[q]
    }
    
    //Set all instances of p == q
    func union(p: Int, q: Int) {
        let pID = self.id[p]
        let qID = self.id[q]
        for i in 0..<self.id.count {
            if self.id[i] == pID {
                self.id[i] = qID
            }
        }
    }
}

//Testing QuickFind
var idQF = [Int]()
let quickFind = QuickFindUF(id: idQF)
quickFind.quickFindUF(10)
quickFind.union(5, q: 1)
quickFind.union(9, q: 2)
quickFind.union(8, q: 1)
quickFind.union(1, q: 3)
quickFind.union(0, q: 7)
quickFind.union(9, q: 3)



//Quick Union
class QuickUnionUF {
    var id : [Int]
    
    init(id: [Int]) {
        self.id = id
    }
    
    func quickUnionUF(N: Int) {
        for i in 0..<N {
            self.id.append(i)
        }
    }
    
    func root(i: Int) -> Int {
        var newI = i
        while(newI != self.id[i]) {
            newI = self.id[i]
        }
        return newI
    }
    
    func connected(p: Int, q: Int) -> Bool {
        return self.root(p) == self.root(q)
    }
    
    func union(p: Int, q: Int) {
        var i = self.root(p)
        var j = self.root(q)
        self.id[i] = j
    }
}

//Testing Quick Union
var idQU = [Int]()
let quickUnion = QuickUnionUF(id: idQU)
quickUnion.quickUnionUF(10)
quickUnion.union(7, q: 3)
quickUnion.union(6, q: 2)
quickUnion.union(7, q: 6)
quickUnion.union(7, q: 1)
quickUnion.union(3, q: 8)



