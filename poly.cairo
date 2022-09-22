// x^3 + 23 x^2 + 45 x + 67  
func main() {
    [ap] = 100, ap++;
    // << Your code here >>
    [ap] = [fp] * [fp], ap++; // x^2
    [ap] = [fp] * [ap - 1], ap++; // x^3
    [ap] = [fp] * 45, ap++; // 45 x
    [ap] = [ap - 3] * 23, ap++; // 23 x^2
    [ap] = [ap - 3] + [ap - 1], ap++; // x^3 + 23 x^2
    [ap] = [ap - 1] + [ap - 3], ap++; // x^3 + 23 x^2 + 45x
    [ap] = [ap - 1] + 67, ap++;       // x^3 + 23 x^2 + 45x + 67
    ret;
}