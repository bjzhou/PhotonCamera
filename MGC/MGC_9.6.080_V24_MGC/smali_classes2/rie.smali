.class public final Lrie;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvo;


# instance fields
.field final synthetic a:Lrig;

.field final synthetic b:Lrfq;


# direct methods
.method public constructor <init>(Lrfq;Lrig;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrie;->b:Lrfq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lrie;->a:Lrig;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Ldwy;)Ldwy;
    .locals 10

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p1, p0, Lrfq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    :goto_6
    iget-object v7, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    iput v2, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v0, Lrig;->c:I

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_e
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x7

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v4, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v5, v0, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_1

    nop

    goto/32 :goto_5e

    nop

    :cond_1
    :goto_18
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_19
    if-nez v8, :cond_2

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_2
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v7, v8

    nop

    :goto_1b
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v2, v1, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v7, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_20
    iget v9, v1, Ldua;->b:I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_21
    iget v5, v0, Lrig;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v3, 0x20

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_25
    iget-object v4, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v2, v1, Ldua;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lrie;->b:Lrfq;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, v3, Ldua;->e:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_29
    goto :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, v1, Ldua;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_b

    nop

    nop

    :goto_31
    move v8, v7

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_51

    nop

    nop

    :goto_33
    iget v9, v1, Ldua;->d:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v8, v1, Ldua;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2, v1}, Ldwy;->f(I)Ldua;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_3c

    nop

    nop

    :goto_37
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_38
    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_39
    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

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

    :goto_3a
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v7, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    :goto_3c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3e
    iget v0, v0, Lrig;->a:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3f
    goto/32 :goto_14

    nop

    :goto_40
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    :goto_41
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    :goto_42
    iget-object v1, p0, Lrie;->a:Lrig;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_43
    iget v4, v0, Lrig;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_46
    iget v5, v0, Lrig;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_47
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    nop

    nop

    :goto_49
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0, v1}, Lrig;-><init>(Lrig;)V

    goto/32 :goto_11

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Ldwy;->a()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4c
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, v3}, Ldwy;->f(I)Ldua;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4e
    if-nez v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4f
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_51
    iget-object v2, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v7, 0x1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_54
    new-instance v0, Lrig;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_55
    iget-object v7, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, p0, Lrfq;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_59
    if-nez v2, :cond_b

    nop

    goto/32 :goto_2a

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    :goto_5a
    add-int v6, v0, v2

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_10

    nop

    nop

    :goto_5c
    if-ne v2, v9, :cond_c

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->au()V

    :goto_5e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_60
    if-nez v2, :cond_d

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v2, v1, Ldua;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {p1}, Lqqy;->r(Landroid/view/View;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-int/2addr v5, v8

    nop

    :goto_64
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_65
    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_66
    if-ne v2, v9, :cond_e

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_67
    add-int/2addr v4, v7

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_6

    nop

    nop

    :goto_69
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v7, :cond_f

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    add-int v0, v0, v1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method
