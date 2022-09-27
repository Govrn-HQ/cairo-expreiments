// Use the information given in the last section, in order to write a piece of code that when 
//executed puts the current values of ap, fp and pc in memory 
// (say, write ap into [ap], fp into [ap + 1] and pc into [ap + 2]).

func main() {
    call helper;
    // main_fp <-- fp
    // return pc: addr(main.ln 10) + 2 (?)
    // xxxxxx <- ap
    [ap] = [ap - 2] + 5, ap++; // ap == stored fp + 2, plus 3 advances in main()
    // main_fp <-- fp
    // return pc
    // main_fp + 2 + 3 
    // xxxxxxx <-- ap
    [ap] = [ap - 3], ap++; // store the fp pushed for the helper call in ap
    // main_fp <-- fp
    // return pc
    // fp + 3 
    // main_fp 
    // xxxxxxxx <-- ap
    [ap] = [ap - 3] + 5, ap++; // add 3 (+ 2 for ret) instructions after helper return to get pc
    // main_fp <-- fp
    // return pc
    // fp + 3 
    // main_fp 
    // return pc + 3
    // xxxxxxx <-- ap
    ret;
}

func helper () {
    // main_fp 
    // return pc: addr(main) + 2
    // xxxxxx <- ap, fp == main_fp + 2
    ret;
}