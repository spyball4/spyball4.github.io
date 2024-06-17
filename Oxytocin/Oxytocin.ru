puts "Hello, World!"

fn match_name(name: &str) -> i32 {
    match name {
        "Dayna" => 2,
        "Yuki" => 2,
        "Albert" => 3,
        _ => 0,
    }
}

fn oxytocin(p_t: &str, t: i32) -> i32 {
    match p_t {
        "Hug" => 3 * t,
        "Kiss" => 10 + (2 * t),
        "Gift" => 5,
        "Quality Time" => 3,
        "Words of Affirmation" => 4,
        "Acts of Service" => 2,
        "Chair Contact" => 7 + t,
        _ => t - 10,
    }
}

fn main() {
    println!("Hello, world! Here is a number:");
    println!("{}", match_name("Dayna") * oxytocin("Hug", 3));
}