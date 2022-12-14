import UIKit

let friendsArray = ["철수", "영희", "수잔", "제임스", "마크"]

let myFriends = friendsArray.map {
    aFriend in return "내 친구다 -> " + aFriend
}

let numbers: [Int] = [22,33,44,55]

let myNumbers: [String] = numbers.map {
    return "내 숫자: \($0)"
}

let myPetDictionary = ["고양이": "야옹", "강아지": "멍멍", "송아지": "음메"]

let myPets: [String] = myPetDictionary.map {
    (animal: String, cry: String) in
    return "\(animal)의 울음소리는 \(cry) 이다"
}

let numbserSet: Set<Int> = [1,1,1,2,3,4,4,4,5]

let myFavoriteNumbers: [Int] = numbserSet.map{
    aNumber in return aNumber * 10
}

class Friend {
    func sayHi() {
        print("안녕?!")
    }
    
    // 오버라이드 가능
    class func sayBye() {
        print("바이바이~")
    }
    
    // 오버라이드 불가
    static func sayMorning() {
        print("굿모닝!")
    }
}

class GirlFriend: Friend {
    class override func sayBye() {
        print("두번 바이!")
    }
}

let myFriend = Friend()
myFriend.sayHi()
Friend.sayBye()

let girlFriend = GirlFriend()
girlFriend.sayHi()
GirlFriend.sayBye()

