#[link(name="math")]
extern {
    fn add(x: i64, y: i64) -> i64;
}

fn main() {
    println!("{} + {} = {}", 5, 10, unsafe { add(5, 10) });
}
