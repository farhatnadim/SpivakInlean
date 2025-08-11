These notes are companion to the lean file. The preliminary section is inspired(if not completely cloned from the work of several people . 

Lean4Game https://github.com/leanprover-community/lean4game?tab=readme-ov-file The project has primarily been developed by Alexander Bentkamp and Jon Eugster.
which is based on ideas from the Lean Game Maker and the Natural Number Game (NNG) by Kevin Buzzard and Mohammad Pedramfar, and on Patrick Massot's prototype: NNG4.

## Introduction to the Preliminary

Spivak starts with properties of numbers and gives us the twelve properties, some of them are without a proof and others with incomplete proof. lean4game provide us with the necessary formalization to start . 
We formalize properties such as Associative law for addition , Existence of an additive identity. note that the domain is the Natural Numbers. 
Early on in this prelimnary we have to brush up with  "induction reasoning" to prove some of these properties also we have to understand the 'succ' type in Lean 4. 


### Approach 

#### Tactics

Of course I am not going to prove everything from scratch, I am going to rely on some of mathlib tactics that were already proven. Tactics are basically wrappers arround proofs that lets you use a proof without needin to prove the fact again  for example x = x. can be proven using rfl , another tactic is rw, which allows you rewrite the right of the equality into the left,
for example h  y = x+3 , will  rw[h], will search for all the instances of y in the code and replace it with x+3. 
rw[\left h] , will replace what's on the left with what's on the right 
rw will attempt a rfl too !

#### succ 

succ is an important concept in Lean 4 and in type theory. We need to explain it a little bit before using it . 