#include "../../clib/sys/io.h"

#define TEST(name, expr, expected)                                   \
    do {                                                            \
        if ((expr) == (expected)) {                                 \
            print(#name " PASS");                                  \
        } else {                                                    \
            print(#name " FAIL");                                  \
        }                                                           \
    } while (0)

/* Test numeric types and arithmetic */
void test_arithmetic(void) {
    TEST(add_int, 2 + 3, 5);
    TEST(sub_int, 10 - 7, 3);
    TEST(mul_int, 4 * 5, 20);
    TEST(div_int, 20 / 4, 5);
    TEST(mod_int, 20 % 6, 2);
    /* Mixed types */
    TEST(add_long, 100000L + 2345L, 102345L);
    TEST(mul_short, (short)7 * (short)6, 42);
    TEST(add_float, (int)(3.5f + 2.5f), 6);
    TEST(add_double, (int)(1.234 + 5.666), 6);
}

/* Test control flow */
void test_control_flow(void) {
    int x = 0;
    if (1) x = 1; else x = 2;
    TEST(if_true, x, 1);

    x = 0;
    if (0) x = 1; else x = 2;
    TEST(if_false, x, 2);

    x = 0;
    for (int i = 0; i < 3; i++) x += i;
    TEST(for_loop, x, 3);

    x = 0;
    int c = 0;
    while (c < 3) { x += c; c++; }
    TEST(while_loop, x, 3);

    x = 0;
    c = 0;
    do { x += c; c++; } while (c < 3);
    TEST(do_while_loop, x, 3);

    x = 2;
    switch (x) {
        case 1: x = 10; break;
        case 2: x = 20; break;
        default: x = 30;
    }
    TEST(switch_case, x, 20);
}

/* Test functions and recursion */
int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

void test_functions(void) {
    TEST(fact_5, factorial(5), 120);
    TEST(fact_0, factorial(0), 1);
}

/* Test structures, enums and typedefs */
typedef struct Point { int x; int y; } Point;
typedef struct PointRepeat { int x; int y; Point p; } PointRepeat;
enum Color { RED, GREEN = 5, BLUE };

void test_struct_enum(void) {
    PointRepeat p;
    p.x = 3;
    p.y = 4;
    p.p.x = p.y;
    p.p.y = p.x;
    TEST(struct_access_x, p.x, 3);
    TEST(struct_access_y, p.y, 4);

    enum Color c1 = RED;
    enum Color c2 = GREEN;
    enum Color c3 = BLUE;
    TEST(enum_red, c1, 0);
    TEST(enum_green, c2, 5);
    TEST(enum_blue, c3, 6);
}

/* Test arrays and loops */
void test_arrays(void) {
    int arr[5];
    for (int i = 0; i < 5; i++) arr[i] = i * 2;
    TEST(arr_0, arr[0], 0);
    TEST(arr_1, arr[1], 2);
    TEST(arr_4, arr[4], 8);
}

/* Test bitwise and logical operators */
void test_bitwise_logical(void) {
    TEST(bit_and, 6 & 3, 2);
    TEST(bit_or, 6 | 3, 7);
    TEST(bit_xor, 6 ^ 3, 5);
    TEST(bit_not, ~0 & 255, 255);
    TEST(logical_and, (1 && 0), 0);
    TEST(logical_or, (1 || 0), 1);
    TEST(logical_not, (!1), 0);
}

/* Test type casting */
void test_cast(void) {
    TEST(cast_int_to_char, (int)( (char)65 ), 65);
    TEST(cast_double_to_int, (int)(5.9), 5);
    TEST(cast_int_to_float, (int)( (float)7.2f ), 7);
}

/* Test preprocessor macros */
#define SQUARE(x) ((x) * (x))
#define MAX(a, b) ((a) > (b) ? (a) : (b))
void test_macros(void) {
    TEST(square_3, SQUARE(3), 9);
    TEST(max_4_7, MAX(4,7), 7);
}

void test_pointer_parameter(int *a) {
	*a = 30;
}

void test_normal_pointer(void) {
    int variable = 0;
    int* pointer = &variable;

	test_pointer_parameter(&variable);

    TEST(normal_pointer, *pointer, variable);
}

int main(void) {
    test_arithmetic();
    test_control_flow();
    test_functions();
    test_struct_enum();
    test_arrays();
    test_bitwise_logical();
    test_cast();
    test_macros();
    print("All tests completed.");
    return 0;
}