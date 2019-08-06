//intで初期
let itemA : Int = 1000
//Stringで初期化
let itemB : String = "こんにちは"
//Doubleで初期化
let itemC : Double = 42.195
//Boolで初期化
let itemD : Bool = true
//1-2 四則演算
let valueA : Int = 100
let valueB : Int = 20
//足し算
print(valueA + valueB)
//引き算
print(valueA - valueB)
//掛け算
print(valueA * valueB)
//割り算
print(valueA / valueB)

//1-3 if文

var valueC : Int = 4
//代入した数字を10,100,1000で割り、1未満になるかどうかを条件分岐していく
if (valueC / 10) < 1 {
    print("\(valueC)は1桁です。")
} else if (valueC / 100) < 1 {
    print("\(valueC)は2桁です。")
} else if (valueC / 1000) < 1 {
    print("\(valueC)は3桁です。")
} else {
    print("\(valueC)は4桁以上の値です。")
}

//1-4 switch文
var digits: Int = 0

// valueCのコピーのnum
var num: Int = valueC

// 桁数を測る
while (num != 0) {
    num /= 10
    digits += 1
}

// 桁数を出力
switch num{
case 0:
    print("\(valueC)は1桁です。")
case 1:
    print("\(valueC)は2桁です。")
case 2:
    print("\(valueC)は3桁です。")
default:
    print("\(valueC)は4桁以上です。")
}


//1-5関数単一の引数
func calculationA(_ value : Int) -> Int{
    
    return 10 * value
}
calculationA(10)

//1-6関数複数の引数
func calculationB(_ valueA :Int,_ valueB :Int){
    print(valueA % valueB)
}
calculationB(100,30)

//1-7関数の戻り値
func calculationC(_ valueA :Int,_ valueB :Int) -> Int{
    return valueA + valueB
}
let sum : Int = calculationC(40, 25)
if sum % 2 == 0 {
    print("計算結果\(sum)は偶数です")
}else{
    print("計算結果\(sum)は奇数です")
}
//1-8クラスのインスタンス
class HogeA{
    func put(){
        print("クラスAインスタンスです")
    }
}
var insA = HogeA()
insA.put()
// 1-9クラスのインスタンスの関数
class HogeB{
    func putName(_ name : String){
        print("私の名前は\(name)です。")
    }
}
let takashi = HogeB()
let Ken = HogeB()
takashi.putName("たかし")
Ken.putName("ケン")

//1-10イニシャライザ
class HogeC{
    //    funcキーワードが不要で、呼び出し時のメソッドも省略できる
    let name : String
    init(_ name : String){
        self.name = name
        putName()
    }
    func putName(){
        print("私の名前は\(name)です")
    }
}
let yamada = HogeC.init("やまだ")
let miyata = HogeC.init("みやた")
//1-11Enum
enum User : String {
    case name       = "名前"
    case age        = "年齢"
    case bloodType  = "血液型"
}

let user: User = User.name

switch user {
case .name:
    print(User.name.rawValue)
case .age:
    print(User.age.rawValue)
case .bloodType:
    print(User.bloodType.rawValue)
}
//1-12 for文
//1~50を出力
for num in 1...50{
    print(num)
}

//1-13 配列（追加）
//改行
var valueE : Int
for valueE in 1...50{
    print(valueE,terminator: "")
}
//1-14配列（削除）
var valueF  = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
valueF.remove(at:2)
print(valueF)

//1-15配列（ソート）
//降順、昇順
var valueG : [Int] = [5, 4, 100, 49, 30, 1, 12, 0]
valueG.sort{$0 < $1}
print(valueG)
valueG.sort{$0 > $1}
print(valueG)

//1-16配列（要素数）
print(valueG.count)

//1-17辞書型
let valueH :[String : Int] = [
    "a" : 1,
    "b" : 2,
    "c" : 3
]
//keyがbの値を出力
print(valueH["b"])
//1-18 Optional
if let b : Int = valueH["b"]{
    print(b)
}
//1-19 nil
if let valueK = valueH["k"]{
    print(valueK)
}else{
    print("値はnilです")
}
//1-20 総合課題
//optional binding
let valueI :  [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]
for i in 0...valueI.count - 1 {
    if let value: Int = valueI[i] as? Int {
        print("数値は\(value)です。")
    } else if let value: String = valueI[i] as? String {
        print(value)
    } else {
        print("値はnilです。")
    }
}


