extension Parsec
{
    public static func parse<UserState : UserStateWithTokenParser, Result>
    (
        parser : GenericParser<String, UserState, Result>,
        userState: UserState = UserState(),
        sourceName: String,
        input: String,
        bare : Bool = false
    ) throws -> Result
    {
        let parser = bare ?
            parser :
            (GenericParser<String, UserState, Void>.userState >>-
            {
                env in
                parser.between(env.tokenParser.whiteSpace, .eof)
                // env.tokenParser.whiteSpace *> parser <* GenericParser<String, UserState, Void>.eof
            })
        return try parser.run(userState: userState, sourceName: sourceName, input: input)
    }
}
