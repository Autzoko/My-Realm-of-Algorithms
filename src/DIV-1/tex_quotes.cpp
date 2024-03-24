#include <cstdio>

int main() {
    int c, first = 1;
    char s[2][4] = {"''", "``"};
    while((c = getchar()) != EOF) {
        if(c == '"')
            printf("%s", s[first]), first ^= 1;
        else
            printf("%c", c);
    }
    return 0;
}