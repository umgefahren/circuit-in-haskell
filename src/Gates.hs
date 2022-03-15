module Gates 
    ( Gate
    ) where

import Parse

data Gate = AndGate {
        name :: String,
        input0 :: Gate,
        input1 :: Gate
} | OrGate {
        name :: String,
        input0 :: Gate,
        input1 :: Gate
} | NotGate {
        name :: String,
        input0 :: Gate
} | InputGate {
        name :: String,
        value :: Bool  
} | OutputGate {
        name :: String,
        input0 :: Gate
}


