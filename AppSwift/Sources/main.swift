//
//  main.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation
import Combine
import SwiftUmegHelper


let basicIO = BasicInputOutput()
basicIO.readingMultipleInputs()

//let appMain = AppSwift.Model()
//print("Hello, \(appMain.modelProps)")

//enum SearchError: Error {
//    case notFound
//    case inputError
//}

//enum RequestMethod: String {
//  case POST
//  case GET
//  case PUT
//  case DELETE
//}
//
//let get: RequestMethod = .POST
//print(get)
//
//let getMethod = RequestMethod.GET.rawValue
//let getEnum = RequestMethod(rawValue: "get".uppercased())
//
//print(getMethod)
//print(getEnum)

//struct JsonizeModel: Codable {
//    var json: String {
//        get {
//            do {
//                let encoder = JSONEncoder()
//                encoder.outputFormatting = .prettyPrinted
//                let encoded = try encoder.encode(self)
//                return String(data: encoded, encoding: .utf8) ?? ""
//            } catch let err {
//                print(err.localizedDescription)
//                return ""
//            }
//        }
//    }
//}
//
//struct Man: JsonizeModel {
//    var name: String = ""
//    var email: String = ""
//    var username: String = ""
//
//
//}

//let man = Man()
//print("Man: \(man.json)")

//class SomeBuilder {
//
//  private var params: [String : Any] = [:]
//
//  func addField(key: String, value: Any) -> Self {
//    params[key] = value
//    return self
//  }
//
//  func build() -> [String : Any] {
//    return params
//  }
//
//}
//
//let someParam = SomeBuilder()
//  .addField(key: "token", value: "Auth")
//  .addField(key: "counter", value: 10)
//  .build()
//
//shout("someParam", someParam)
//
//
//let format = "yyyy-MM-dd HH:mm:ss"
//let currentDateStr = "2020-04-07 06:05:12"
////let seconds
//let currentTimeStr = Date().currentTime
//shout("currentTimeStr", currentTimeStr)
//let result = Int(Date().convertToTime(dateStr: currentTimeStr, withFormat: format))
//
//shout("currentDateStr", Date().convertToTime(dateStr: currentDateStr, withFormat: format))
//shout("current time", result)
//
//let convertedDate = Date(timeIntervalSince1970: Double(result))
//shout("converted date", convertedDate)
//
//let formatter = DateFormatter()
//formatter.dateFormat = format
//let decoratedDate = formatter.string(from: convertedDate)
//shout("decoratedDate", decoratedDate)



//let algorithm = AwesomeAlgorithm()
//let linear = algorithm.linearSearch(array: algorithm.arrayNumber.sorted(), forKey: 56)
//let binary = algorithm.binarySearch(array: algorithm.arrayNumber.sorted(), forKey: 56)
//shout("Result", "Linear: \(linear), \nBinary: \(binary)")



//class Notif: Equatable {
//    static func == (lhs: Notif, rhs: Notif) -> Bool {
//        return lhs.id == rhs.id && lhs.read == rhs.read
//    }
//
//    var id: Int = 0
//    var read: Bool = false
//
//    init(id: Int, read: Bool) {
//        self.id = id
//        self.read = read
//    }
//
//    var toString: String {
//        get { return "Notif -> id: \(id), read: \(read)" }
//    }
//}
//
//let arrayLocal = [
//    Notif(id: 0, read: true),
//    Notif(id: 1, read: false),
//    Notif(id: 2, read: true),
//    Notif(id: 3, read: false),
//]
//
//let arrayApi = [
//    Notif(id: 0, read: false),
//    Notif(id: 1, read: false),
//    Notif(id: 2, read: false),
//    Notif(id: 3, read: false),
//    Notif(id: 4, read: false),
//]
//
//var arrayResult = [Notif]()
//var diffArray = [Notif]()
//
//let difference = arrayApi.difference(from: arrayLocal)
//difference.forEach {
//    switch $0 {
//    case let .insert(_, element, _):
//        shout("insert", element.toString)
//        diffArray.append(element)
//    case let .remove(_, element, _):
//        shout("remove", element.toString)
//        diffArray.append(element)
//    }
//}
//
//let common = arrayLocal.filter { arrayApi.contains($0) }
//
//common.forEach { shout("common", $0.toString) }
//diffArray.forEach { shout("difference", $0.toString) }
//
//arrayResult.append(contentsOf: common)
//arrayResult.append(contentsOf: diffArray)
//
//arrayResult = arrayResult.sorted(by: { $0.id < $1.id })
//
//arrayResult.forEach {
//    shout("updated array", $0.toString)
//}
//
//var disposables = Set<AnyCancellable>()
//
//var tempArray = [Notif]()
//Publishers.Sequence<[Notif], Never>(sequence: arrayResult)
//    .removeDuplicates(by: { $0.id == $1.id })
//    .sink(receiveCompletion: { completion in
//        arrayResult = tempArray
//        arrayResult.forEach { shout("final update array", $0.toString) }
//    }, receiveValue: { notif in
//        shout("value", notif.toString)
//        let newNotif = Notif(id: notif.id, read: notif.read)
//        if let matched = arrayLocal.filter({ $0.id == notif.id }).first {
//            newNotif.read = matched.read
//        }
//        tempArray.append(newNotif)
//    }).store(in: &disposables)






//updateArray = common + difference
//updateArray.forEach { shout("notif", $0) }




//struct Book {
//    var author: String = ""
//    var quantity: Int = 0
//}
//
//func updateData(_ book: Book) {
//    var book3 = book
//    book3.author = "Steve"
//    print("Data buku 1: \(book1.author)")
//    print("Data buku 3: \(book3.author)")
//}
//
//
//var book1 = Book()
//book1.author = "Daniel Nimafa"
//book1.quantity = 10
//print("Book1 author: \(book1.author)")
//
//var book2 = book1
//book2.author = "Jhony Ive"
//print("Book2 author: \(book2.author)")
//
//updateData(book1)

//func factorial(count: Int) -> Int {
//    var arr = [Int]()
//
//    for index in 0...count {
//        arr.append(index)
//    }
//
//    return arr.reduce(count, { $1 - $0 })
//}
//
//let factorialResult = factorial(count: 100)
//shout("FactorialResult", factorialResult)
//
//let numbers = [1,2,3,4]
//let numberSum = numbers.reduce(1, { x, y in
//    x * y
//})
//
//shout("sum", numberSum)


//enum WeatherError: Error {
//    case somethingHappen
//}

//let weatherPublisher = PassthroughSubject<Int, Never>()
//let subscriber = weatherPublisher
//    .filter { $0 > 25 }
//    .sink { value in
//        shout("Temperature filtered", value)
//}

//let publisher = PassthroughSubject<Int, WeatherError>()
//
//let anotherSubs = publisher
//    .filter { $0 > 20 }
//    .handleEvents(
//    receiveSubscription: { (subs: Subscription) in
//        shout("New subscription begin", subs)
//},
//    receiveOutput: { (output: Int) in
//        shout("Receive Output", output)
//},
//    receiveCompletion: { (error: Subscribers.Completion<WeatherError>) in
//        switch error {
//        case .finished:
//            break
//        case .failure(let err):
//            switch err {
//            case .somethingHappen:
//                shout("Error", "something happen")
//            }
//            break
//        }
//        shout("Subscription complete with potential error", error)
//},
//    receiveCancel: {
//        shout("Subscription", "canceled")
//})
//
//publisher.send(30)
//publisher.send(21)
//publisher.send(22)
//publisher.send(28)


//struct SCORE {
//    static let ENEMY_DETROYED: Int = 20
//    static let ENEMY_WOUNDED: Int = 5
//}
//
//class Game {
//
//    private var score: Int = 0
//
//    func add(score: Int) {
//        self.score += score
//    }
//
//    func wounded(score: Int) {
//        self.score -= score
//    }
//
//    func getScore() -> Int {
//        self.score
//    }
//
//}
//
//
//let game = Game()
//game.add(score: SCORE.ENEMY_DETROYED)
//shout("Initial score", game.getScore())
//game.wounded(score: SCORE.ENEMY_WOUNDED)
//shout("Player score after get wounded", game.getScore())
//
//let str = "abc"
//let strNumber = "1423"
//
//shout("is number", CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: str)))


//protocol IFlyBehaviour {
//    func run()
//}
//
//class JetFly: IFlyBehaviour {
//
//    func run() {
//        shout("Jet Fly Algorith", "Run!")
//    }
//
//}
//
//class ClientJet {
//
//    var algorithm: IFlyBehaviour?
//
//    init(algorithm: IFlyBehaviour) {
//        self.algorithm = algorithm
//    }
//
//    func execute() {
//        algorithm?.run()
//    }
//
//}
//
//
//let aJet = ClientJet(algorithm: JetFly())
//aJet.execute()
