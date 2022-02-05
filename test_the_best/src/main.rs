extern crate exitcode;
use std::process::Command;
use std::env;

// https://doc.rust-lang.org/std/process/struct.Command.html

fn run() -> std::process::Output {
        let args: Vec<String> = env::args().collect();
        // println!("{:?}", args);
	let output = Command::new("sh")
            .arg("-c")
            .arg(&args[1])
            .output()
            .expect("failed to execute process");
	return output;
}

fn test(string: String) -> bool {
    // println!("{}", string);
    if "Arch is the best!\n".eq(&string) {
       return true;
    }
    return false;
}

fn obtain() -> String {
    let output = run();
    let bytes = output.stdout;
    return String::from_utf8(bytes).expect("Found invalid UTF-8");
}

fn main() {
    let string = obtain();
    if test(string) {
       std::process::exit(exitcode::OK);
    }
    std::process::exit(-1);
}
