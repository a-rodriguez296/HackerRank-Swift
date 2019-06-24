//: Playground - noun: a place where people can play

import UIKit

//var str = "ibfdgaeadiaefgbhbdghhhbgdfgeiccbiehhfcggchgghadhdhagfbahhddgghbdehidbibaeaagaeeigffcebfbaieggabcfbiiedcabfihchdfabifahcbhagccbdfifhghcadfiadeeaheeddddiecaicbgigccageicehfdhdgafaddhffadigfhhcaedcedecafeacbdacgfgfeeibgaiffdehigebhhehiaahfidibccdcdagifgaihacihadecgifihbebffebdfbchbgigeccahgihbcbcaggebaaafgfedbfgagfediddghdgbgehhhifhgcedechahidcbchebheihaadbbbiaiccededchdagfhccfdefigfibifabeiaccghcegfbcghaefifbachebaacbhbfgfddeceababbacgffbagidebeadfihaefefegbghgddbbgddeehgfbhafbccidebgehifafgbghafacgfdccgifdcbbbidfifhdaibgigebigaedeaaiadegfefbhacgddhchgcbgcaeaieiegiffchbgbebgbehbbfcebciiagacaiechdigbgbghefcahgbhfibhedaeeiffebdiabcifgccdefabccdghehfibfiifdaicfedagahhdcbhbicdgibgcedieihcichadgchgbdcdagaihebbabhibcihicadgadfcihdheefbhffiageddhgahaidfdhhdbgciiaciegchiiebfbcbhaeagccfhbfhaddagnfieihghfbaggiffbbfbecgaiiidccdceadbbdfgigibgcgchafccdchgifdeieicbaididhfcfdedbhaadedfageigfdehgcdaecaebebebfcieaecfagfdieaefdiedbcadchabhebgehiidfcgahcdhcdhgchhiiheffiifeegcfdgbdeffhgeghdfhbfbifgidcafbfcd"

var str = "abcdefghhgfedecba"

func isValid(str:String) -> String {
    
    let countedSet = NSCountedSet(array: Array(str))
    var auxArray = [Int]()
    

    for element in countedSet.objectEnumerator() {
        let count = countedSet.count(for: element)
        auxArray.append(count)
    }
    
    var set = Set(auxArray)
    print(auxArray)
    print(set)
    
    
    
    if set.count == 1 {
        return "YES"
    } else if set.count > 2 {
        return "NO"
    } else {
        print("# different letters:\(countedSet.count) #frequency:\(set.count)")
        
        //me estoy asegurando que solo hayan dos letras i.e. a, b
        if countedSet.count == 2 {
            let firstElement = set.removeFirst()
            let lastElement = set.removeFirst()
            if abs(firstElement - lastElement) == 1 || (firstElement == 1 || lastElement == 1) {
                return "YES"
            } else {
                return "NO"
            }
        } else {
            let auxSet = NSCountedSet(array: auxArray)
            return auxSet.count(for: 1) == 1 ? "YES" : "NO"
//            let auxSet = NSCountedSet(array: auxArray)
//            if auxSet.count(for: 1) == 1 {
//                return "YES"
//            } else {
//
//            }
//            return auxSet.count(for: 1) == 1 ? "YES" : "NO"
        }
    }
}


isValid(str: str)


