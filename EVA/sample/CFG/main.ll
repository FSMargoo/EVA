; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Enter a non-negative integer: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid input! Using n=3.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Factorial of %d is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Numbers from 0 to %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%d is even\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%d is odd\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Switch on n mod 4 (=%d): \00", align 1
@str = private unnamed_addr constant [4 x i8] c"Two\00", align 1
@str.13 = private unnamed_addr constant [4 x i8] c"One\00", align 1
@str.14 = private unnamed_addr constant [5 x i8] c"Zero\00", align 1
@str.15 = private unnamed_addr constant [6 x i8] c"Three\00", align 1
@str.16 = private unnamed_addr constant [18 x i8] c"Program complete.\00", align 1
@switch.table.main.rel = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @str.14 to i64), i64 ptrtoint (ptr @switch.table.main.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str.13 to i64), i64 ptrtoint (ptr @switch.table.main.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str to i64), i64 ptrtoint (ptr @switch.table.main.rel to i64)) to i32)], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 1, -2147483648) i32 @factorial(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, -1
  %5 = icmp ult i32 %0, 9
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, -8
  %8 = sub i32 %0, %7
  %9 = insertelement <4 x i32> poison, i32 %0, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = add nsw <4 x i32> %10, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %20, %12 ]
  %14 = phi <4 x i32> [ %11, %6 ], [ %21, %12 ]
  %15 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %18, %12 ]
  %16 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %19, %12 ]
  %17 = add <4 x i32> %14, <i32 -4, i32 -4, i32 -4, i32 -4>
  %18 = mul <4 x i32> %14, %15
  %19 = mul <4 x i32> %17, %16
  %20 = add nuw i32 %13, 8
  %21 = add <4 x i32> %14, <i32 -8, i32 -8, i32 -8, i32 -8>
  %22 = icmp eq i32 %20, %7
  br i1 %22, label %23, label %12, !llvm.loop !5

23:                                               ; preds = %12
  %24 = mul <4 x i32> %19, %18
  %25 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %24)
  %26 = icmp eq i32 %4, %7
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %3
  %28 = phi i32 [ %0, %3 ], [ %8, %23 ]
  %29 = phi i32 [ 1, %3 ], [ %25, %23 ]
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %33, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %34, %30 ], [ %29, %27 ]
  %33 = add nsw i32 %31, -1
  %34 = mul nuw nsw i32 %31, %32
  %35 = icmp ult i32 %31, 3
  br i1 %35, label %36, label %30, !llvm.loop !8

36:                                               ; preds = %30, %23, %1
  %37 = phi i32 [ 1, %1 ], [ %25, %23 ], [ %34, %30 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  tail call void (ptr, ...) @printf(ptr noundef dereferenceable(1) @.str)
  %2 = call i32 (ptr, ...) @scanf(ptr poison, ptr noundef nonnull %1)
  %3 = icmp ne i32 %2, 1
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %9 = call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %8)
  store i32 3, ptr %1, align 4, !tbaa !9
  br label %12

10:                                               ; preds = %0
  %11 = icmp ult i32 %4, 2
  br i1 %11, label %47, label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ 3, %7 ], [ %4, %10 ]
  %14 = call i32 @llvm.usub.sat.i32(i32 %13, i32 2)
  %15 = add nuw i32 %14, 1
  %16 = icmp ult i32 %14, 7
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = and i32 %15, -8
  %19 = sub i32 %13, %18
  %20 = insertelement <4 x i32> poison, i32 %13, i64 0
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> zeroinitializer
  %22 = add nsw <4 x i32> %21, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi i32 [ 0, %17 ], [ %31, %23 ]
  %25 = phi <4 x i32> [ %22, %17 ], [ %32, %23 ]
  %26 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %29, %23 ]
  %27 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %30, %23 ]
  %28 = add <4 x i32> %25, <i32 -4, i32 -4, i32 -4, i32 -4>
  %29 = mul <4 x i32> %26, %25
  %30 = mul <4 x i32> %27, %28
  %31 = add nuw i32 %24, 8
  %32 = add <4 x i32> %25, <i32 -8, i32 -8, i32 -8, i32 -8>
  %33 = icmp eq i32 %31, %18
  br i1 %33, label %34, label %23, !llvm.loop !13

34:                                               ; preds = %23
  %35 = mul <4 x i32> %30, %29
  %36 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %35)
  %37 = icmp eq i32 %15, %18
  br i1 %37, label %47, label %38

38:                                               ; preds = %34, %12
  %39 = phi i32 [ %13, %12 ], [ %19, %34 ]
  %40 = phi i32 [ 1, %12 ], [ %36, %34 ]
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i32 [ %44, %41 ], [ %39, %38 ]
  %43 = phi i32 [ %45, %41 ], [ %40, %38 ]
  %44 = add nsw i32 %42, -1
  %45 = mul nuw nsw i32 %43, %42
  %46 = icmp ult i32 %42, 3
  br i1 %46, label %47, label %41, !llvm.loop !14

47:                                               ; preds = %41, %34, %10
  %48 = phi i32 [ %4, %10 ], [ %13, %34 ], [ %13, %41 ]
  %49 = phi i32 [ 1, %10 ], [ %36, %34 ], [ %45, %41 ]
  call void (ptr, ...) @printf(ptr noundef dereferenceable(1) @.str.3, i32 noundef %48, i32 noundef %49)
  %50 = load i32, ptr %1, align 4, !tbaa !9
  call void (ptr, ...) @printf(ptr noundef dereferenceable(1) @.str.4, i32 noundef %50)
  %51 = load i32, ptr %1, align 4, !tbaa !9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %57, %47
  %54 = phi i32 [ %51, %47 ], [ %63, %57 ]
  %55 = srem i32 %54, 4
  call void (ptr, ...) @printf(ptr noundef dereferenceable(1) @.str.7, i32 noundef %55)
  %56 = icmp ult i32 %55, 3
  br i1 %56, label %65, label %69

57:                                               ; preds = %47, %57
  %58 = phi i32 [ %62, %57 ], [ 0, %47 ]
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.5, ptr @.str.6
  call void (ptr, ...) @printf(ptr noundef dereferenceable(1) %61, i32 noundef %58)
  %62 = add nuw nsw i32 %58, 1
  %63 = load i32, ptr %1, align 4, !tbaa !9
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %57, label %53, !llvm.loop !15

65:                                               ; preds = %53
  %66 = zext nneg i32 %55 to i64
  %67 = shl i64 %66, 2
  %68 = call ptr @llvm.load.relative.i64(ptr @switch.table.main.rel, i64 %67)
  br label %69

69:                                               ; preds = %53, %65
  %70 = phi ptr [ %68, %65 ], [ @str.15, %53 ]
  %71 = call i32 @puts(ptr nonnull dereferenceable(1) %70)
  %72 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @printf(ptr noundef nonnull %0, ...) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %3 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %4 = load ptr, ptr %2, align 8, !tbaa !17
  %5 = call i32 @__mingw_vfprintf(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %4) #10
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @scanf(ptr nocapture nonnull readnone %0, ...) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %3 = call ptr @__acrt_iob_func(i32 noundef 0) #10
  %4 = load ptr, ptr %2, align 8, !tbaa !17
  %5 = call i32 @__mingw_vfscanf(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %4) #10
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %5
}

declare dllimport ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nounwind
declare dso_local i32 @__mingw_vfprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

declare dso_local i32 @__mingw_vfscanf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 19.1.5"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !7, !6}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}
