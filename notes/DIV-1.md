# DIV-1: C++ Basic and STL

This makedown notes includes problems involves basic C++ programming and the Standard Template Library.

## Problem 1: TEX QUOTES

***In TeX, the left quote is "``" and the right quote is "''". Input a passage that contains at least a pair of quote, and the program should convert the original quotes to the TeX format.***

Sample Input:

```
"To be or not to be, " quoth the Bard, "that is the question".
```

Sample Output:

```
``To be or not to be, '' quoth the Bard, ``that is the question''.
```

Code Link: [TeX Quotes.cpp](../src/DIV-1/tex_quotes.cpp)

#### Comments

This code set a flag variable **first** to indicate current quote is the left one or the right one. In the *while* loop, an **XOR** operation is used to decide whether to use the left or right TeX quote. Because buffer **s** set s[0] is the right TeX quote and s[1] is the left TeX quote, during the continuous changes between 0 and 1 of the *first*, we can print quotes in pair.

## Problem 2: AGE SORT

***Given $n(0\lt n\le2000000)$ numbers which are in between of $[0, 100]$, output these numbers in ascending order.	***

Code Link: [Age Sort.cpp](../src/DIV-1/age_sort.cpp)

#### Comments

This program uses an extra space to lessen the time usage by assigning an array variable *a* whose size is 104. During inputing each number, the position that indexed from *a* will add $1$, which records the times of this number has appeared. Thus, output every number in *a* according to its times of appearence from head to end, which achieves a desired output of sequential order.

**TIPS:**

- *fill_n* function has a better performance than *memset*.
- Using "?-:" sentence can better handle the tail output.

## Problem 3: PALINDROMES

***Input a string, determines whether it is a palindrome or a mirrored string. The input string does not contain '0'.***

***What is PALINDROME and MIRRORED STRING?***

- ***Palindrome: same as the original string after a reversal. e.g. ABBA, MADAM.***
- ***Mirrored String: same as the original string after a mirror reversal. e.g. 2S, 3AIAE.***

***Attention: not every character has a legal mirrored character!***

| CHARACTER | REVERSE | CHARACTER | REVERSE | CHARACTER | REVERSE |
| :-------: | :-----: | :-------: | :-----: | :-------: | :-----: |
|     A     |    A    |     M     |    M    |     Y     |    Y    |
|     B     |    -    |     N     |    -    |     Z     |    5    |
|     C     |    -    |     O     |    O    |     1     |    1    |
|     D     |    -    |     P     |    -    |     2     |    S    |
|     E     |    3    |     Q     |    -    |     3     |    E    |
|     F     |    -    |     R     |    -    |     4     |    -    |
|     G     |    -    |     S     |    2    |     5     |    Z    |
|     H     |    H    |     T     |    T    |     6     |    -    |
|     I     |    I    |     U     |    U    |     7     |    -    |
|     J     |    L    |     V     |    V    |     8     |    8    |
|     K     |    -    |     W     |    W    |     9     |    -    |
|     L     |    J    |     X     |    X    |          |        |

Sample Input:

```
NOTAPALINDROME
ISAPALINILAPASI
2A3MEAS
ATOYOTA
```

Sample Output:

```
NOTAPALINDROME -- is not a palindrome.

ISAPALINILAPASI -- is a regular palindrome.

2A3MEAS -- is a mirrored string.

ATOYOTA -- is a mirrored palindrome.
```

Code Link: [Palindrome.cpp](../src/DIV-1/palindromes.cpp)

#### Comments

To judge whether the input string is a palindrome, we just need to figure out whether $s_i=s_{len-1-i}$, if does not, then this string not a palindrome. And to judge whether is a mirrored string, this program uses a global variable *rev* to stash the according mirrored character. Actually, the variable *rev* can be seen as a map between the origin character and the mirrored character, for example, rev[0] is 'A' means that 'A' is the mirrored character of the character at position 0, which is 'A' as well; and if the mirrored character is nothing, shown as a space in *rev* means the character at that position has no mirrored subject. In function *r*, if current pointed character is between 'A'/'a' and 'Z'/'z', then return the according character by indexing from *rev*, and if current character is a digit, we need to add 25 because the digit section of variable *rev* is in the tail.

## Problem 4: CIRCULAR SEQUENCE

***A circular string that length is $n$ has $n$ ways of presentation, each of them is a character sequence made of a clockwise traverse that begin at a certain position. Among these presentations, the one with a minimum dictionary order is called "the minimum presentation". Input a circular DNA string (contains A, G, C, and T) that length is $n(n\le 100)$, get the minimum presentation of the input DNA string.***

Code Link: [Circular Sequence.cpp](../src/DIV-1/circular_sequence.cpp)

#### Comments
