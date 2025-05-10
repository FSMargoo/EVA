; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.PointRepeat = type { i32, i32, %struct.Point }
%struct.Point = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"add_int PASS\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sub_int PASS\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mul_int PASS\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"div_int PASS\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mod_int PASS\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"add_long PASS\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mul_short PASS\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"add_float PASS\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"add_double PASS\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"if_true PASS\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"if_true FAIL\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"if_false PASS\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"if_false FAIL\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"for_loop PASS\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"for_loop FAIL\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"while_loop PASS\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"while_loop FAIL\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"do_while_loop PASS\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"do_while_loop FAIL\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"switch_case PASS\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"switch_case FAIL\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"fact_5 PASS\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"fact_5 FAIL\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"fact_0 PASS\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"fact_0 FAIL\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"struct_access_x PASS\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"struct_access_x FAIL\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"struct_access_y PASS\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"struct_access_y FAIL\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"enum_red PASS\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"enum_red FAIL\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"enum_green PASS\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"enum_green FAIL\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"enum_blue PASS\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"enum_blue FAIL\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"arr_0 PASS\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"arr_0 FAIL\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"arr_1 PASS\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"arr_1 FAIL\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"arr_4 PASS\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"arr_4 FAIL\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"bit_and PASS\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"bit_or PASS\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"bit_xor PASS\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"bit_not PASS\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"logical_and PASS\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"logical_or PASS\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"logical_not PASS\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"cast_int_to_char PASS\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"cast_double_to_int PASS\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"cast_int_to_float PASS\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"square_3 PASS\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"max_4_7 PASS\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"normal_pointer PASS\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"normal_pointer FAIL\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"All tests completed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_arithmetic() #0 {
  br label %1

1:                                                ; preds = %0
  call void @print(ptr noundef @.str)
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  call void @print(ptr noundef @.str.1)
  br label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4
  call void @print(ptr noundef @.str.2)
  br label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  call void @print(ptr noundef @.str.3)
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  call void @print(ptr noundef @.str.4)
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  call void @print(ptr noundef @.str.5)
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  call void @print(ptr noundef @.str.6)
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  call void @print(ptr noundef @.str.7)
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  call void @print(ptr noundef @.str.8)
  br label %18

18:                                               ; preds = %17
  ret void
}

declare dso_local void @print(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_control_flow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 1, ptr %1, align 4
  br label %4

4:                                                ; preds = %0
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @print(ptr noundef @.str.9)
  br label %9

8:                                                ; preds = %4
  call void @print(ptr noundef @.str.10)
  br label %9

9:                                                ; preds = %8, %7
  br label %10

10:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  store i32 2, ptr %1, align 4
  br label %11

11:                                               ; preds = %10
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @print(ptr noundef @.str.11)
  br label %16

15:                                               ; preds = %11
  call void @print(ptr noundef @.str.12)
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %18

18:                                               ; preds = %25, %17
  %19 = load i32, ptr %2, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 4
  %23 = load i32, ptr %1, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %2, align 4
  br label %18, !llvm.loop !5

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %1, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @print(ptr noundef @.str.13)
  br label %34

33:                                               ; preds = %29
  call void @print(ptr noundef @.str.14)
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34
  store i32 0, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %36

36:                                               ; preds = %39, %35
  %37 = load i32, ptr %3, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, ptr %3, align 4
  %41 = load i32, ptr %1, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, ptr %1, align 4
  %43 = load i32, ptr %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %3, align 4
  br label %36, !llvm.loop !7

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %1, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void @print(ptr noundef @.str.15)
  br label %51

50:                                               ; preds = %46
  call void @print(ptr noundef @.str.16)
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51
  store i32 0, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %53

53:                                               ; preds = %59, %52
  %54 = load i32, ptr %3, align 4
  %55 = load i32, ptr %1, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, ptr %1, align 4
  %57 = load i32, ptr %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %3, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %3, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %53, label %62, !llvm.loop !8

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %1, align 4
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call void @print(ptr noundef @.str.17)
  br label %68

67:                                               ; preds = %63
  call void @print(ptr noundef @.str.18)
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68
  store i32 2, ptr %1, align 4
  %70 = load i32, ptr %1, align 4
  switch i32 %70, label %73 [
    i32 1, label %71
    i32 2, label %72
  ]

71:                                               ; preds = %69
  store i32 10, ptr %1, align 4
  br label %74

72:                                               ; preds = %69
  store i32 20, ptr %1, align 4
  br label %74

73:                                               ; preds = %69
  store i32 30, ptr %1, align 4
  br label %74

74:                                               ; preds = %73, %72, %71
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %1, align 4
  %77 = icmp eq i32 %76, 20
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @print(ptr noundef @.str.19)
  br label %80

79:                                               ; preds = %75
  call void @print(ptr noundef @.str.20)
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @factorial(i32 noundef %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_functions() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = call i32 @factorial(i32 noundef 5)
  %3 = icmp eq i32 %2, 120
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @print(ptr noundef @.str.21)
  br label %6

5:                                                ; preds = %1
  call void @print(ptr noundef @.str.22)
  br label %6

6:                                                ; preds = %5, %4
  br label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7
  %9 = call i32 @factorial(i32 noundef 0)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @print(ptr noundef @.str.23)
  br label %13

12:                                               ; preds = %8
  call void @print(ptr noundef @.str.24)
  br label %13

13:                                               ; preds = %12, %11
  br label %14

14:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_struct_enum() #0 {
  %1 = alloca %struct.PointRepeat, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 0
  store i32 3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 1
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.Point, ptr %9, i32 0, i32 0
  store i32 %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.Point, ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @print(ptr noundef @.str.25)
  br label %21

20:                                               ; preds = %15
  call void @print(ptr noundef @.str.26)
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.PointRepeat, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @print(ptr noundef @.str.27)
  br label %29

28:                                               ; preds = %23
  call void @print(ptr noundef @.str.28)
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29
  store i32 0, ptr %2, align 4
  store i32 5, ptr %3, align 4
  store i32 6, ptr %4, align 4
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %2, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @print(ptr noundef @.str.29)
  br label %36

35:                                               ; preds = %31
  call void @print(ptr noundef @.str.30)
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @print(ptr noundef @.str.31)
  br label %43

42:                                               ; preds = %38
  call void @print(ptr noundef @.str.32)
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @print(ptr noundef @.str.33)
  br label %50

49:                                               ; preds = %45
  call void @print(ptr noundef @.str.34)
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_arrays() #0 {
  %1 = alloca [5 x i32], align 16
  %2 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = mul nsw i32 %7, 2
  %9 = load i32, ptr %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 %10
  store i32 %8, ptr %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %2, align 4
  br label %3, !llvm.loop !9

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 0
  %18 = load i32, ptr %17, align 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @print(ptr noundef @.str.35)
  br label %22

21:                                               ; preds = %16
  call void @print(ptr noundef @.str.36)
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @print(ptr noundef @.str.37)
  br label %30

29:                                               ; preds = %24
  call void @print(ptr noundef @.str.38)
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 4
  %34 = load i32, ptr %33, align 16
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @print(ptr noundef @.str.39)
  br label %38

37:                                               ; preds = %32
  call void @print(ptr noundef @.str.40)
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_bitwise_logical() #0 {
  br label %1

1:                                                ; preds = %0
  call void @print(ptr noundef @.str.41)
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  call void @print(ptr noundef @.str.42)
  br label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4
  call void @print(ptr noundef @.str.43)
  br label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  call void @print(ptr noundef @.str.44)
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  call void @print(ptr noundef @.str.45)
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  call void @print(ptr noundef @.str.46)
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  call void @print(ptr noundef @.str.47)
  br label %14

14:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cast() #0 {
  br label %1

1:                                                ; preds = %0
  call void @print(ptr noundef @.str.48)
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  call void @print(ptr noundef @.str.49)
  br label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4
  call void @print(ptr noundef @.str.50)
  br label %6

6:                                                ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_macros() #0 {
  br label %1

1:                                                ; preds = %0
  call void @print(ptr noundef @.str.51)
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  call void @print(ptr noundef @.str.52)
  br label %4

4:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pointer_parameter(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store i32 30, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_normal_pointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store ptr %1, ptr %2, align 8
  call void @test_pointer_parameter(ptr noundef %1)
  br label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %2, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void @print(ptr noundef @.str.53)
  br label %10

9:                                                ; preds = %3
  call void @print(ptr noundef @.str.54)
  br label %10

10:                                               ; preds = %9, %8
  br label %11

11:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @test_arithmetic()
  call void @test_control_flow()
  call void @test_functions()
  call void @test_struct_enum()
  call void @test_arrays()
  call void @test_bitwise_logical()
  call void @test_cast()
  call void @test_macros()
  call void @print(ptr noundef @.str.55)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 19.1.5"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
