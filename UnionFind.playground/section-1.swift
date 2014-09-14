// Playground - noun: a place where people can play

import UIKit

//Quick Find
class QuickFindUF {
    var id : [Int]
    
    init(id: [Int]) {
        self.id = id
    }
    
    func quickFindUF(N: Int) {
        for i in 0..<N {
            self.id.append(i)
        }
    }
    
    func connected(p: Int, q: Int) -> Bool {
        return self.id[p] == self.id[q]
    }
    
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