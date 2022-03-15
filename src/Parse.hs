module Parse (
        ParsedDefinition, ParsedRelation
        ) where

data ParsedDefinition = Definition String Char 
data ParsedRelation = Relation String String Int 

findOutputGateinRelation :: [ParsedRelation] -> String -> ParsedRelation
findOutputGateinRelation (x:xs) name
        | name == extractOutputNameFromRelation x = x
        | otherwise = findOutputGateinRelation xs name
findOutputGateinRelation [] _ = error "Searched Relation was not found"

extractOutputNameFromRelation :: ParsedRelation -> String 
extractOutputNameFromRelation (Relation name _ _) = name

findGateinDefinition :: [ParsedDefinition] -> String -> ParsedDefinition
findGateinDefinition (x:xs) name
        | name == extractNameFromDefinition x = x
        | otherwise  = findGateinDefinition xs name
findGateinDefinition [] _ = error "Searched Definition was not found"

extractNameFromDefinition :: ParsedDefinition -> String
extractNameFromDefinition (Definition name _) = name
