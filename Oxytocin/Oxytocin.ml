(** This file is located at /Users/elzhongfritsche/Documents/GitHub/spyball4.github.io/Oxytocin/Oxytocin.ml.

This file contains functions related to calculating oxytocin levels based on different types of interactions and durations.

The functions in this file include:
- [match_name]: A function that takes a name as input and returns a corresponding value based on the name.
- [oxytocin]: A function that calculates the oxytocin level based on the type of interaction and the duration of the interaction.

The file also includes a print statement at the end.

To use the functions in this file, you can call them with appropriate arguments.

TODO: EVERYTHING *)

(** [match_name name] is a function that takes a name as input and returns a corresponding value based on the name.

  - [name] is a string representing a name.

  The function returns an integer value based on the name. *)

let match_name name =
  match name with
  | "Dayna" -> 2
  | "Yuki" -> 2
  | "Albert" -> 3
  | _ -> 0


(** [oxytocin p_t t] is a function that calculates the oxytocin level based on the type of interaction and the duration of the interaction.

  - [p_t] is a string representing the type of interaction. It can be one of the following:
    - "Hug"
    - "Kiss"
    - "Gift"
    - "Quality Time"
    - "Words of Affirmation"
    - "Acts of Service"
    - "Chair Contact"
    - Any other string

  - [t] is an integer representing the duration of the interaction.

  The function returns an integer representing the calculated oxytocin level.
*)
let oxytocin p_t t =
  match p_t with
  | "Hug" -> 3 * t
  | "Kiss" -> 10 + (2 * t)
  | "Gift" -> 5
  | "Quality Time" -> 3
  | "Words of Affirmation" -> 4
  | "Acts of Service" -> 2
  | "Chair Contact" -> 7 + t 
  | _ -> t - 10

print_endline "Hello, world! Here is a number:";
print_endline match_name "Dayna" * oxytocin "Hug" 3;