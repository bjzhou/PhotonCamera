.class public final Lrfr;
.super Ldxx;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldxx;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method

.method public final d(Landroid/view/View;FF)V
    .locals 5

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_0
    if-lt v0, p2, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1
    if-lt v0, p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    :goto_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_4
    iget-boolean p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_5
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_2
    goto/32 :goto_74

    nop

    nop

    :goto_6
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto :goto_15

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int p3, p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_c
    if-gtz p2, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_7e

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_34

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_12
    cmpl-float v0, p3, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    iget-boolean p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_7e

    nop

    :goto_15
    goto/32 :goto_69

    nop

    nop

    :goto_16
    if-lt v0, p2, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    if-lt p2, p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p3, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    cmpg-float p2, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    if-ltz v1, :cond_6

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1d
    int-to-float p2, p2

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_20
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7e

    nop

    :goto_22
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    const/4 p2, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_7
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    sub-int/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez p2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_9
    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    cmpg-float v1, p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_30
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->at(Landroid/view/View;F)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p3, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p3

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_34
    sub-int v0, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_35
    if-gt p2, v1, :cond_a

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_36
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x16

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p2, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_39
    iget-object p2, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3a
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3b
    iget-object p2, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p2, :cond_b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aq(Landroid/view/View;IZ)V

    goto/32 :goto_7

    nop

    nop

    :goto_3f
    if-lt p2, p3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_21

    nop

    nop

    :goto_40
    iget-boolean v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_41
    const v0, 0x2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_d

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6a

    nop

    :goto_44
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_45
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-ltz p2, :cond_e

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_2

    nop

    nop

    :goto_4b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_4e
    sub-int v0, p2, v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_50
    iget-object p3, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_51
    iget-object p0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_52
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p3, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_54
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_2

    nop

    :goto_57
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sub-int v0, p2, v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_59
    cmpl-float p2, p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5a
    iget-object p3, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5b
    iget-boolean p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/2addr v1, p3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_5e
    sub-int/2addr p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5f
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sub-int/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_62
    sub-int/2addr p2, p3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_63
    cmpl-float p2, p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_64
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_65
    iget-boolean v4, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_67
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_68
    iget-object p2, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_69
    move v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_8

    nop

    :goto_6b
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sub-int/2addr p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_70

    nop

    nop

    :goto_6f
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_72
    if-gt p2, p3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_78
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_10
    goto/32 :goto_20

    nop

    nop

    :goto_7a
    if-lt p2, v0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_7b
    iget v1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez p2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_12
    :goto_7e
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_81
    iget-object v1, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_83
    if-nez v1, :cond_13

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_84
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final e(Landroid/view/View;I)Z
    .locals 5

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v1, v3, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    const v1, 0x14

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    if-eq v1, v4, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p2, Landroid/view/View;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    :goto_20
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v2

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    return v3

    nop

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2c
    if-eq v1, p2, :cond_9

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    goto/16 :goto_d

    nop

    nop

    :goto_2f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final f(Landroid/view/View;I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/view/View;I)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ldxx;->h()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p1, p0}, Ldvu;->z(III)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h()I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->as()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    iget-object p0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final i(Landroid/view/View;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrfr;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ai(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method
