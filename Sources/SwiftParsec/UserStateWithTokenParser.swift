public protocol UserStateWithTokenParser
{
    associatedtype TP : TokenParser where TP.UserState == Self
    var tokenParser : TP { get }

    init()
}
