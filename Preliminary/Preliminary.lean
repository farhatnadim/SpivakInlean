import Preliminary.Basic
import Mathlib

open Nat -- Natural number namespace to use succ

-- In lean everything is a Type, a function is type, an expression is type , the type is type
-- This gives us flexibility to define everything as type but also using proposition logic as type
-- so propositions are a type, as reminder a proposition is a statement that can be true or false.
variable (p p q : Prop)
#check And p q
#check p → q
#check Implies p q -- this is the same as p → q
-- Example I
example (x : ℕ) : x = x := by
rfl -- in c assertions of the form a = a are true by definition
-- That's very obvious now let us add rewrite rw into it

example (x y : ℕ) (h1 : x = 3) (h2 : y = 4) : x + y = 7 :=by
rw[h1] -- in C we use macros for rewriting.
rw[h2]

-- now let us do it the other way arround
example (x y : ℕ) (h1 : x = 3) (h2 : y = 4) : x + y = 3 + 4  :=by
rw[← h1]
rw[← h2]

-- now let us make it more concise
example (x y : ℕ) (h1 : x = 3) (h2 : y = 4) : x + y = 3 + 4  :=by
rw[← h1, ← h2]

-- at this stage we need to introduce succ,
-- succ and induction will play such a major role in the rest of the development
-- that we will need to explain them a little bit
--

-- II
--
import Mathlib
