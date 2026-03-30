.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Ldsw;
.source "PG"

# interfaces
.implements Lrij;


# instance fields
.field public A:I

.field public B:Ljava/lang/ref/WeakReference;

.field public C:Ljava/lang/ref/WeakReference;

.field public final D:Ljava/util/ArrayList;

.field public E:I

.field public F:Z

.field final G:Landroid/util/SparseIntArray;

.field H:Lrii;

.field private I:I

.field private J:F

.field private K:Z

.field private L:I

.field private M:I

.field private N:Landroid/content/res/ColorStateList;

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Lrku;

.field private T:Z

.field private final U:Lrfw;

.field private V:Landroid/animation/ValueAnimator;

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:I

.field public a:Z

.field private aa:Z

.field private final ab:F

.field private ac:I

.field private ad:Landroid/view/VelocityTracker;

.field private ae:I

.field private af:Ljava/util/Map;

.field private final ag:Ldxx;

.field public b:I

.field public c:I

.field public d:Lrkp;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field o:I

.field public p:I

.field public q:I

.field r:F

.field public s:I

.field t:F

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Ldxy;

.field z:I


# direct methods
.method private final 073cd2a2b853ff356a6fb957fea59891m()V
    .locals 14

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v8, :cond_0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1
    move v10, v5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ldwd;->g(Landroid/view/View;I)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ldwd;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_8
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v1, v2, :cond_3

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v4, v2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4a

    nop

    nop

    :goto_e
    if-ne v1, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_10
    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->adaea855441dbc84b995b0cb750b08c8m(Landroid/view/View;Ldxa;I)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_11
    move v8, v2

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_12
    and-int/2addr v10, v13

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v1, 0x80000

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    if-ne v13, v7, :cond_5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v3}, Ldwd;->e(Landroid/view/View;Ldxa;)V

    :goto_16
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v6, v7

    nop

    :goto_1c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne v5, v1, :cond_6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3b

    nop

    nop

    :goto_22
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_24
    sget-object v7, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_26
    const v7, 0x7f1400b8

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    if-ne v1, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v6, Ldxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_90

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2f
    if-ne v5, v10, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_8
    goto/32 :goto_7e

    nop

    nop

    :goto_30
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lt v9, v13, :cond_9

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_9
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_32
    sget-object v1, Ldxa;->s:Ldxa;

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

    :goto_33
    if-ne v5, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_34
    if-ne v1, v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget v7, v7, v8

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_36
    if-lez v0, :cond_c

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_21

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    invoke-static {v0, v1}, Ldwd;->g(Landroid/view/View;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v6, v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_3e
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_43
    invoke-direct {v12, p0, v4}, Lrfs;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_45
    const v0, 0x8

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v3, 0x3

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

    :goto_47
    invoke-direct/range {v8 .. v13}, Ldxa;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Ldxm;Ljava/lang/Class;)V

    goto/32 :goto_15

    nop

    nop

    :goto_48
    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->adaea855441dbc84b995b0cb750b08c8m(Landroid/view/View;Ldxa;I)V

    :goto_49
    goto/32 :goto_3a

    nop

    nop

    :goto_4a
    sget-object v1, Ldxa;->t:Ldxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4b
    move v7, v2

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_4e
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v1, Ldxa;->t:Ldxa;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_50
    sget-object v1, Ldxa;->s:Ldxa;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_51
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v13}, Ldxa;->a()I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->adaea855441dbc84b995b0cb750b08c8m(Landroid/view/View;Ldxa;I)V

    :goto_54
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_55
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v1, Ldxa;->u:Ldxa;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_57
    const/high16 v1, 0x100000

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_58
    move-object v8, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move v7, v3

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_5e
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move v13, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v12, Lrfs;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_62
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->adaea855441dbc84b995b0cb750b08c8m(Landroid/view/View;Ldxa;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto :goto_5d

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_66
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_67
    const v1, 0x3

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_68
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_69
    if-eq v7, v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_1c

    nop

    nop

    :goto_6b
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast v13, Ldxa;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    :goto_6f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/high16 v1, 0x40000

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_71
    move v9, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_72
    const/4 v4, 0x6

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

    nop

    :goto_73
    if-ne v1, v4, :cond_11

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_76
    const/4 v2, 0x0

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

    :goto_77
    if-lt v7, v8, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_5b

    nop

    nop

    :goto_78
    if-lt v8, v9, :cond_13

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_13
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v3, Ldxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_49

    nop

    nop

    :goto_7b
    goto/32 :goto_4f

    nop

    nop

    :goto_7c
    if-ne v1, v2, :cond_14

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_56

    nop

    nop

    :goto_7d
    invoke-virtual {v8}, Ldxa;->b()Ljava/lang/CharSequence;

    move-result-object v8

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

    :goto_7e
    move v7, v3

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v0, v1}, Ldwd;->g(Landroid/view/View;I)V

    goto/32 :goto_57

    nop

    nop

    :goto_81
    check-cast v0, Landroid/view/View;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v6}, Ldxa;->a()I

    move-result v6

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->adaea855441dbc84b995b0cb750b08c8m(Landroid/view/View;Ldxa;I)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/16 v9, 0x20

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    return-void

    nop

    :goto_86
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_89
    move v4, v3

    nop

    nop

    :goto_8a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v8, Ldxa;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_22

    nop

    nop

    :goto_8d
    goto/16 :goto_49

    nop

    nop

    :goto_8e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8f
    move v13, v2

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v0, v1}, Ldwd;->g(Landroid/view/View;I)V

    goto/32 :goto_4d

    nop

    nop

    :goto_93
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Landroid/util/SparseIntArray;

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

    nop
.end method

.method private final 099bb25e43f805dae5c6c2afd9521caam()F
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aH(FLandroid/view/RoundedCorner;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aH(FLandroid/view/RoundedCorner;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v5, 0x3a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v5, v1, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

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
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    const/16 v5, 0x3a1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->967db76ff980688139725c54cdc5cd82m()Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

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

    :goto_1f
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    const v1, 0x5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 1938725685c818b36d8cfe92893912eem(Z)V
    .locals 6

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->af:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_6
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_7
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_d
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    :goto_f
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_28

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    :goto_16
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

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

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    :goto_1b
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->af:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    new-instance v3, Ljava/util/HashMap;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->af:Ljava/util/Map;

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    if-eq v3, v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    :goto_2c
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_2a

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->af:Ljava/util/Map;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method private final 2e93aa56b061ffac37dcfd2c79a0c8ccm()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    float-to-int v0, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private final 58bf383f6ef88b4ebf94ecfc8585b901m()Z
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    if-ne p0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    move v1, v2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

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

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop
.end method

.method private final 7e3b59caaf43af55994faa3742e1aec9m(I)I
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_5
    const/4 v0, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

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

    :goto_7
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_c
    const/4 v0, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p0

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

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 967db76ff980688139725c54cdc5cd82m()Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    aget v0, v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_11

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_1b
    check-cast p0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Lrfw;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ldsw;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    new-instance v0, Lrfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lrfw;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x3dcccccd    # 0.1f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ab:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v2, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ag:Ldxx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

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

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Z

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

    :goto_1d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, p0}, Lrfw;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, p0}, Lrfr;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    goto/32 :goto_18

    nop

    nop

    :goto_23
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_27
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_28
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    goto/32 :goto_21

    nop

    nop

    :goto_0
    invoke-virtual {v8, p2}, Lrkp;->setTint(I)V

    :goto_1
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:Lrku;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float p1, p1

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v6, 0x3dcccccd    # 0.1f

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p2, 0x13

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v8, v9, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_43

    nop

    nop

    :goto_d
    sget-object v6, Lrgb;->a:[I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v10, Lrfp;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v8, p2}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Z

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v8, 0x2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_12
    const-string p1, "ratio must be a float value between 0 and 1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v8, 0x7f0400da

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_ce

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_17
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v6, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 p2, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_1b
    iget v3, p2, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:Lrku;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_1e
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v8, 0x16

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_22
    invoke-direct {v8, p2}, Lrku;-><init>(Lrkt;)V

    goto/32 :goto_88

    nop

    nop

    :goto_23
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_44

    nop

    nop

    :goto_28
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v3, 0x1f4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_2c
    iget p2, p2, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ak(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v10, p0, v0}, Lrfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v8, Lrku;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_33
    goto/16 :goto_1

    nop

    :goto_34
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_36
    invoke-direct {v6, p0}, Lrfr;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_37
    iput-object v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_38
    aput p2, v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3b
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_3c
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v2, 0xd

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v4, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_40
    iget v9, v8, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_e1

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_45
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:F

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_47
    const v9, 0x7f150691

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3e

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->am(I)V

    :goto_4b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_4d
    const/high16 v4, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget p2, p2, Landroid/util/TypedValue;->data:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-wide/16 v10, 0x1f4

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->am(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_51
    const v9, 0x1010031

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_52
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v2, 0x9

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_54
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_55
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_56
    const/16 p2, 0x14

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_57
    new-instance v6, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_58
    new-array v9, v8, [F

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_59
    aput p2, v9, v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5c
    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5d
    iget v2, v8, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance p2, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_60
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_b

    nop

    nop

    :goto_62
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_64
    new-instance p2, Lrkp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_66
    if-eq v9, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_5d

    nop

    nop

    :goto_67
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-gtz v3, :cond_4

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_6a
    const/16 p2, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6c
    if-nez v8, :cond_5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6d
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e585bb035b957bdb9a7e70df294bf6f4m(IZ)V

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/content/res/ColorStateList;

    nop

    nop

    :goto_6f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Z

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_72
    const/4 v7, 0x3

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_74
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_75
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_76
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:F

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_78
    const/16 p2, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_7a
    if-ltz p2, :cond_6

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_6
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {p0, p1, p2}, Ldsw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_d3

    nop

    nop

    :goto_7c
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p2, p1}, Lrkp;->k(Landroid/content/Context;)V

    goto/32 :goto_39

    nop

    nop

    :goto_7f
    const/16 p2, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_81
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_84
    const/16 p2, 0xf

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_85
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_86
    new-instance v6, Lrfr;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_87
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

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

    :goto_88
    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:Lrku;

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_7
    goto/32 :goto_c1

    nop

    nop

    :goto_8b
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8c
    if-eq v2, v8, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_8d
    const v7, 0x7f070638

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_90
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_91
    if-eq v4, v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_92
    const/16 v2, 0x8

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

    nop

    nop

    :goto_93
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_95
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

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

    nop

    :goto_96
    if-nez v4, :cond_a

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_97
    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ag:Ldxx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->099bb25e43f805dae5c6c2afd9521caam()F

    move-result p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_99
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Lrfw;

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_9a
    invoke-direct {p2, v8}, Lrkp;-><init>(Lrku;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_9f
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_a0
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_b
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Z

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a3
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a4
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a5
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_aa

    nop

    :goto_a7
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_a8
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->al(Z)V

    goto/32 :goto_4c

    nop

    nop

    :goto_aa
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_ac
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-nez v4, :cond_d

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_b0
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_b1
    if-nez p2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    new-instance v3, Lrfw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_b3
    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b4
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-eq v3, v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b6
    const/16 p2, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_b8
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_ba
    iget-object v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

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

    :goto_bb
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_bc
    invoke-static {p1, v6, v7}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-static {p1, p2, v8, v9}, Lrku;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Lrkt;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_bf
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Z

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c0
    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d8c9e94c5429a470eeaa258830a47d24m()V

    :goto_c2
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_c3
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_c4
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_c5
    cmpl-float p2, v2, p2

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    cmpg-float v3, v2, v3

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-direct {v3, p0}, Lrfw;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_cb
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_54

    nop

    nop

    :goto_cd
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ak(I)V

    :goto_ce
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez v8, :cond_10

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    :goto_d2
    goto/32 :goto_bb

    nop

    nop

    :goto_d3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_d4
    if-nez p2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d1

    nop

    nop

    :goto_d5
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    return-void

    nop

    :goto_d7
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_d8
    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ab:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d9
    const/4 v8, 0x6

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_60

    nop

    nop

    :goto_dd
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_e0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->073cd2a2b853ff356a6fb957fea59891m()V

    :goto_e1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_e3
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_9e

    nop

    nop

    nop
.end method

.method private static final aH(FLandroid/view/RoundedCorner;)F
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_4
    cmpl-float v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    return p1

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v1, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float p1, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    if-gtz v1, :cond_3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private static final aI(IIII)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    const/high16 p0, -0x80000000

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const/high16 p3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p2, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p1, p3, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const/4 p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private final adaea855441dbc84b995b0cb750b08c8m(Landroid/view/View;Ldxa;I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p3}, Lrfs;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lrfs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, v0}, Ldwd;->j(Landroid/view/View;Ldxa;Ldxm;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static af(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "The view is not associated with BottomSheetBehavior"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const-string v0, "The view is not a child of CoordinatorLayout"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private final cb711930645fb85624360bc9d22d787bm()I
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_4
    return v0

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/lit8 v2, v2, 0x9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    nop

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

    nop

    :goto_8
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ac:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-int/lit8 v2, v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v0, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x15

    nop

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

    :goto_1a
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    nop

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

    :goto_20
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final d8c9e94c5429a470eeaa258830a47d24m()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v1, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x12

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cb711930645fb85624360bc9d22d787bm()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x16

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private final e585bb035b957bdb9a7e70df294bf6f4m(IZ)V
    .locals 4

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    aput p2, v0, v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5
    move p1, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_42

    nop

    nop

    :goto_b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move p1, v3

    nop

    nop

    :goto_d
    goto/32 :goto_48

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_d

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_37

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    :goto_1a
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->967db76ff980688139725c54cdc5cd82m()Z

    move-result p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1}, Lrkp;->o(F)V

    :goto_1c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_21
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_22
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p2, Lrkp;->a:Lrkn;

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

    nop

    :goto_24
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->099bb25e43f805dae5c6c2afd9521caam()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    :goto_29
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

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

    nop

    :goto_2a
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne v1, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_7
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_2d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq p1, v1, :cond_8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-array v0, v0, [F

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

    :goto_30
    if-nez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->099bb25e43f805dae5c6c2afd9521caam()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_33
    iget p2, p2, Lrkn;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_34
    const v0, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    :goto_37
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_3a
    goto/32 :goto_5

    nop

    nop

    :goto_3b
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_b

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

    :cond_b
    goto/32 :goto_15

    nop

    :goto_3f
    if-nez p1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

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

    :goto_41
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Z

    nop

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

    :goto_42
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    :goto_44
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_47
    if-eq p1, v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_12

    nop

    nop

    :goto_48
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Z

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method private final ee688a4a54b1e49901189c14a3f1b180m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Ldsz;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

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
    return-void

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ad()I
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const v0, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    goto :goto_8

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    :goto_13
    return p0

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_18
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method final ae(Landroid/view/View;)Landroid/view/View;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    :goto_4
    invoke-static {p1}, Ldvw;->m(Landroid/view/View;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v2, v0, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    :goto_1a
    return-object v3

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of v0, p1, Landroid/view/ViewGroup;

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

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final ag(Lrft;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ah()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lrii;->e:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_6
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrii;->f:Lms;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_10
    const v0, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrii;->a()Landroid/animation/Animator;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iput-object v1, p0, Lrii;->f:Lms;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    int-to-long v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    const-string v1, "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lrii;->f:Lms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    const-string v0, "MaterialBackHelper"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final ai(I)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    if-le p1, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    :goto_5
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

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

    nop

    :goto_8
    div-float/2addr p1, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    sub-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto :goto_15

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_c

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    int-to-float v1, v2

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    const v0, 0x1e

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

    nop

    :goto_18
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v0, p1}, Lrft;->a(Landroid/view/View;F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    if-lt v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v2, Lrft;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sub-int p1, v1, p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_26
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    sub-int p1, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    :goto_2c
    if-eq v1, v2, :cond_4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    :goto_2e
    int-to-float p1, p1

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

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_31
    goto/16 :goto_20

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final aj()V
    .locals 7

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v4, v0, Lrii;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v0}, Lrin;-><init>(Lrii;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, v0, Lrii;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    new-instance v1, Lrin;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput p0, v3, v6

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_32

    nop

    nop

    :goto_11
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

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

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v3, Leac;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    :goto_16
    iput-object v2, v0, Lrii;->f:Lms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_18
    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    iget v4, v0, Lrii;->d:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1e
    new-array v3, v3, [F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v0, v1}, Lrer;->b(IIF)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_20
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_21
    const/4 v2, 0x0

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

    :goto_22
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->an(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    new-instance v2, Lrfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, v1, Lms;->a:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, v0, Lrii;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lrii;->a()Landroid/animation/Animator;

    move-result-object v3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

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

    :goto_2b
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2c
    iget v1, v1, Lms;->a:F

    nop

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

    :goto_2d
    const/4 v2, 0x5

    nop

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f
    int-to-long v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->an(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    iget-object v4, v0, Lrii;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_37
    invoke-direct {v3}, Leac;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v3, v0, :cond_4

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_2e

    nop

    nop

    :goto_3a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, v0, Lrii;->f:Lms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3d
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v3, v4, v1}, Lrer;->b(IIF)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_40
    iget v0, v0, Lrii;->d:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_42
    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v4, v0, Lrii;->c:I

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_44
    invoke-direct {v2, p0}, Lrfo;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    goto/32 :goto_26

    nop

    nop

    :goto_45
    mul-float/2addr p0, v4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ak(I)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "offset must be greater than or equal to 0"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-gez p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e585bb035b957bdb9a7e70df294bf6f4m(IZ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final al(Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->an(I)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->073cd2a2b853ff356a6fb957fea59891m()V

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_9
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop
.end method

.method public final am(I)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->au()V

    goto/32 :goto_15

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

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

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final an(I)V
    .locals 3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->7e3b59caaf43af55994faa3742e1aec9m(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    const-string p1, "Cannot set state: 5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/16 :goto_23

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_11
    const-string p0, "BottomSheetBehavior"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    :goto_15
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    :goto_18
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_5
    goto/32 :goto_39

    nop

    nop

    :goto_1a
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-le v0, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v0, p1

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_10

    nop

    nop

    :goto_27
    const v0, 0x5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_29
    new-instance v1, Lstv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq p1, v0, :cond_9

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    :goto_2f
    goto :goto_26

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    :goto_31
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1, p0, p1, v0, v2}, Lstv;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final ao(I)V
    .locals 7

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    move p1, v3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move p1, v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    if-ne p1, v3, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e585bb035b957bdb9a7e70df294bf6f4m(IZ)V

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

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
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_31

    nop

    nop

    :goto_1a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v2, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->1938725685c818b36d8cfe92893912eem(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p1, v3, :cond_4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_5

    nop

    :goto_24
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->1938725685c818b36d8cfe92893912eem(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lt v5, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->073cd2a2b853ff356a6fb957fea59891m()V

    :goto_2b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne p1, v0, :cond_9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_38

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v4, p1}, Lrft;->b(Landroid/view/View;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_30
    move v3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v4, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_35
    if-eq p1, v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_36
    goto :goto_2b

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    check-cast v0, Lrft;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    if-ne p1, v1, :cond_c

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_c
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3b
    const v1, 0x19

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne p1, v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final ap(Lms;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrii;->f:Lms;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public final aq(Landroid/view/View;IZ)V
    .locals 2

    goto/32 :goto_27

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, v1, Ldxy;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    iput-object p1, v1, Ldxy;->d:Landroid/view/View;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Lrfw;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_c
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p2}, Lrfw;->a(I)V

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput p1, v1, Ldxy;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->7e3b59caaf43af55994faa3742e1aec9m(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p3, v0, p1, p1}, Ldxy;->g(IIII)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    iget p1, v1, Ldxy;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, v1, Ldxy;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e585bb035b957bdb9a7e70df294bf6f4m(IZ)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    :goto_24
    invoke-virtual {v1, p1, v0}, Ldxy;->i(II)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    :goto_26
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final ar(Lms;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrii;->f:Lms;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrii;->f:Lms;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const-string v1, "Must call startBackProgress() before updateBackProgress()"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    :goto_11
    iget p1, p1, Lms;->a:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "MaterialBackHelper"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lrii;->f:Lms;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lrii;->b(F)V

    :goto_19
    goto/32 :goto_8

    nop

    nop
.end method

.method public final as()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final at(Landroid/view/View;F)Z
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_2
    int-to-float v0, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    mul-float/2addr p2, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    const/high16 p1, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    :goto_6
    goto/32 :goto_24

    nop

    nop

    :goto_7
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cb711930645fb85624360bc9d22d787bm()I

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v0, v2, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_c
    if-gtz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    sub-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    add-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float p0, p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ab:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

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

    :goto_24
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final au()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d8c9e94c5429a470eeaa258830a47d24m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_67

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_a
    if-lt v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    const v1, 0x13

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_f
    if-eq p1, p4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_15

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_22

    nop

    nop

    :goto_13
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aa:Z

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    const/16 p4, 0x3e8

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

    :goto_19
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_63

    nop

    nop

    :goto_20
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_21
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_19

    nop

    nop

    :goto_24
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_29
    move v0, p3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_33

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_63

    nop

    :goto_33
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_34
    sub-int p4, p1, p4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    if-lt p1, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p1, :cond_7

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lt p1, p4, :cond_8

    nop

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

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_33

    nop

    nop

    :goto_3a
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-int v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3c
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_3d
    if-gtz p1, :cond_9

    nop

    goto/32 :goto_42

    nop

    :cond_9
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x5

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

    :goto_3f
    sub-int/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_41
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_44
    sub-int/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_45
    const/4 p3, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sub-int p3, p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_47
    if-lt p3, p1, :cond_a

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p1, :cond_b

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_b
    :goto_4a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aq(Landroid/view/View;IZ)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4

    nop

    :goto_4f
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_50
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_51
    sub-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->at(Landroid/view/View;F)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_53
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_55
    if-lt v0, p1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_56
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aa:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, p4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    nop

    :goto_58
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_59
    const/4 p4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z:I

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_60
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_61
    sub-int v0, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_62
    if-gt p1, p4, :cond_10

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_10
    :goto_63
    goto/32 :goto_29

    nop

    nop

    :goto_64
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v0, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    :goto_67
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_69
    if-eq p3, p1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const v0, 0xe

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6b
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez p1, :cond_12

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_12
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p2, v1, :cond_0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    move p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_1
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;II)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_b
    if-eq v7, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_d
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_f
    move p2, v2

    nop

    :goto_10
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_15
    sub-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_18
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p2, :cond_5

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    nop

    :goto_1f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float p0, p1, p0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x1

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

    :goto_23
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;II)Z

    move-result v7

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p2, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;II)Z

    move-result p2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

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

    nop

    :goto_2f
    if-ne p1, v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_30
    float-to-int v6, v6

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_57

    nop

    nop

    :goto_33
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v0, :cond_a

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

    :cond_a
    goto/32 :goto_32

    nop

    nop

    :goto_37
    if-eqz p2, :cond_b

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_38
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_39
    float-to-int v0, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3a
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v7, v3

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3e
    iget p0, p0, Ldxy;->b:I

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_3f
    if-ne v0, p2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    float-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_41
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_43
    float-to-int p2, p2

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_44
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_47
    if-ne v7, v4, :cond_e

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_e
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_f

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v3, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_10
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4a
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4b
    if-eqz p2, :cond_11

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ee688a4a54b1e49901189c14a3f1b180m()V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_4d
    if-nez v3, :cond_12

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4e
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4f
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_50
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_10

    nop

    nop

    :goto_52
    goto/32 :goto_f

    nop

    nop

    :goto_53
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    :goto_54
    goto/32 :goto_79

    nop

    nop

    :goto_55
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_56
    return v2

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_59
    return v1

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v7, :cond_13

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v7, Landroid/view/View;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_5d
    if-eq v0, v4, :cond_14

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p2, p3}, Ldxy;->j(Landroid/view/MotionEvent;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_64
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    nop

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

    :goto_66
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-lez v0, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_15
    goto/32 :goto_75

    nop

    :goto_68
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_69
    if-nez v7, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6e
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne v0, v1, :cond_17

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_72
    return v1

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz p2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_18
    goto/32 :goto_26

    nop

    nop

    :goto_75
    goto/32 :goto_5f

    nop

    :goto_76
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move-object v3, p2

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

    nop

    :goto_78
    if-nez p2, :cond_19

    nop

    goto/32 :goto_14

    nop

    :cond_19
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_79
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7a
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-gtz p0, :cond_1a

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_1a
    goto/32 :goto_59

    nop

    nop

    :goto_7c
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7d
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7e
    return v2

    nop

    :goto_7f
    goto/32 :goto_31

    nop

    nop

    nop
.end method

.method public final e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v4, Lrie;

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, v0}, Ldvw;->g(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    :goto_8
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Ldvu;->l(Landroid/view/View;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    if-eq p1, p3, :cond_1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_d
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2a

    nop

    nop

    :goto_14
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sub-int/2addr p3, p1

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    :goto_18
    goto/32 :goto_be

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p3, Ldwd;->a:[I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->073cd2a2b853ff356a6fb957fea59891m()V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_20
    if-ne p1, v3, :cond_6

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7a

    nop

    :goto_22
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p1, v1, :cond_7

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_7
    goto/32 :goto_cd

    nop

    nop

    :goto_24
    new-instance v0, Lrii;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_25
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_27
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0}, Lrif;-><init>()V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_2c
    sub-int v3, p3, p1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p2, v4}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p3, 0x4

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_32
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_34
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_7

    nop

    :goto_37
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_38
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v3, Ldwd;->a:[I

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_3b
    goto :goto_34

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :cond_9
    goto/32 :goto_a7

    nop

    nop

    :goto_3e
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_b1

    nop

    nop

    :goto_41
    check-cast p1, Lrft;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_42
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p3, :cond_b

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lt v3, v4, :cond_c

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    if-eqz v3, :cond_d

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_47
    if-eq p1, p3, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_e
    :goto_48
    goto/32 :goto_c

    nop

    nop

    :goto_49
    if-nez v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v3, p0, v0}, Lrfq;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    goto/32 :goto_54

    nop

    nop

    :goto_4c
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_10

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

    nop

    :cond_10
    goto/32 :goto_3

    nop

    :goto_50
    if-eqz v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_11
    goto/32 :goto_52

    nop

    nop

    :goto_51
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v0, Lrig;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_55
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_56
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 p3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_58
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_59
    return v1

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5c
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5f
    if-lt v2, p1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_12
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_61
    if-eqz v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_63
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object p3, Ldwd;->a:[I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v0, Ldwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_69
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v3}, Lrkp;->m(F)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v0, Lrif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 p3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_71
    new-instance v3, Lrfq;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_72
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:F

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_73
    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a0

    nop

    nop

    :goto_74
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_8e

    nop

    nop

    :goto_76
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {p1, v0}, Ldxy;->b(Landroid/view/ViewGroup;Ldxx;)Ldxy;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_7a
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_7b
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p1, p2}, Lrft;->c(Landroid/view/View;)V

    goto/32 :goto_86

    nop

    nop

    :goto_7d
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lrii;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object p3, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v0

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_bd

    nop

    :goto_81
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_82
    cmpl-float v4, v3, v4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_83
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_84
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_85
    if-eq p1, v3, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_cc

    nop

    nop

    :goto_86
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ac:I

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eq p1, p3, :cond_16

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_16
    goto/32 :goto_7b

    nop

    nop

    :goto_8b
    invoke-direct {v0, p2}, Ldwm;-><init>(Landroid/view/View;)V

    goto/32 :goto_39

    nop

    nop

    :goto_8c
    invoke-virtual {p2, v3}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    goto/32 :goto_93

    nop

    nop

    :goto_8d
    sget-object p1, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    sub-int/2addr p3, v4

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_90
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_91
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_34

    nop

    :goto_95
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e585bb035b957bdb9a7e70df294bf6f4m(IZ)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_97
    invoke-direct {v3, v0}, Ldwn;-><init>(Ldwm;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-eq p1, p3, :cond_17

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_17
    goto/32 :goto_b3

    nop

    nop

    :goto_9b
    if-nez v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_18
    goto/32 :goto_6e

    nop

    nop

    :goto_9c
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;I)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ac:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9e
    if-nez p1, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :goto_a1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/high16 v4, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_a3
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    new-instance v3, Ldwn;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_a6
    const/4 p3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ag:Ldxx;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_a8
    if-eq p1, p3, :cond_1a

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_1a
    goto/32 :goto_c2

    nop

    nop

    :goto_a9
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-eqz v3, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    sub-int/2addr v0, p1

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_ae
    sget-object p3, Ldwd;->a:[I

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_af
    move v0, v1

    nop

    nop

    :goto_b0
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_b1
    move v0, v2

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_b3
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_b4
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v0, v4, v5, v6, v7}, Lrig;-><init>(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b6
    if-eqz v0, :cond_1c

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d8c9e94c5429a470eeaa258830a47d24m()V

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_b8
    if-nez v0, :cond_1d

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b9
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_bc
    move p1, p3

    nop

    nop

    :goto_bd
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ac:I

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_bf
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_c0
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c3
    invoke-direct {v0, p2}, Lrii;-><init>(Landroid/view/View;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_c5
    const v3, 0x7f070162

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-static {p2}, Ldvw;->a(Landroid/view/View;)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c9
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-eqz v3, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_cb
    invoke-direct {v4, v3, v0}, Lrie;-><init>(Lrfq;Lrig;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_cc
    move p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_cd
    const/4 p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const/4 v2, 0x0

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
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ae:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    :goto_4
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-virtual {v1, p3}, Ldxy;->e(Landroid/view/MotionEvent;)V

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

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

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_c
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gtz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, v1, Ldxy;->b:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    cmpl-float p1, p1, v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_37

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_1f
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p2, p1}, Ldxy;->d(Landroid/view/View;I)V

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    :goto_23
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_e

    nop

    :goto_29
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2f
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    if-eq v1, v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ee688a4a54b1e49901189c14a3f1b180m()V

    :goto_32
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_35
    goto/32 :goto_1a

    nop

    :goto_36
    return v0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sub-float/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3b
    if-eqz p1, :cond_a

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Ldxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_2
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr p4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    add-int/2addr v1, v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v1, p4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p3, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aI(IIII)I

    move-result p3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr p4, p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    add-int/2addr p4, p1

    nop

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

    nop

    :goto_f
    invoke-static {p5, p4, p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aI(IIII)I

    move-result p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2, p3, p0}, Landroid/view/View;->measure(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final l(Landroid/view/View;)Z
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V
    .locals 4

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_2
    if-ltz p4, :cond_0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_38

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aa:Z

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    if-eqz v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_b
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz p4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    sub-int v1, v0, p4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_14
    aput p4, p5, p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    neg-int p3, v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_18
    iput p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_19
    if-nez p3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_7
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1b
    const/4 p3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p3, Ldwd;->a:[I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_1e
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_20
    aput v0, p5, p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    neg-int p3, p4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_23
    sub-int/2addr v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object p5, Ldwd;->a:[I

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

    :goto_25
    if-lt v1, p3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_34

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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

    :goto_27
    if-eq p3, p6, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    :goto_28
    if-eqz v3, :cond_b

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_3d

    nop

    nop

    :goto_2a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Z

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4e

    nop

    nop

    :goto_2d
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aa:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p6, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ai(I)V

    goto/32 :goto_18

    nop

    nop

    :goto_32
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v2, :cond_c

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_c
    :goto_36
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    :goto_38
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_39
    goto :goto_46

    nop

    :goto_3a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p6, :cond_d

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_d
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3c
    goto :goto_38

    nop

    :goto_3d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3f
    neg-int p3, p4

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

    :goto_40
    invoke-virtual {p3, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_41
    sub-int/2addr v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_42
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_43
    aput v0, p5, p1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_45
    const/4 p6, 0x0

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_48
    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 p3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_10

    nop

    nop

    :goto_50
    invoke-virtual {p6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p6

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

    nop

    :goto_51
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->as()Z

    move-result p6

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_53
    sget-object p5, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p3, Ldwd;->a:[I

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

    nop

    :goto_55
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ad()I

    move-result p3

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

    :goto_56
    aput p4, p5, p1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_57
    if-eq p6, p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    neg-int p3, v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Z

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq p3, p6, :cond_f

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-gt v1, p3, :cond_10

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_10
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5f
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_60
    if-eq p3, p6, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4d

    nop

    nop

    :goto_61
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_12
    goto/32 :goto_5

    nop

    :goto_62
    if-eqz p3, :cond_13

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_13
    :goto_63
    goto/32 :goto_55

    nop

    nop

    :goto_64
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aa:Z

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop
.end method

.method public final n(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final o(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 5

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    and-int/lit8 v4, p1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_36

    nop

    nop

    :goto_4
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v4, p2, Lrfv;->e:Z

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v4, v1, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p1, v0, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p1, p2, Lrfv;->a:I

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    if-eq v4, v0, :cond_5

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p2, Lrfv;

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

    :goto_18
    if-ne p1, v3, :cond_6

    nop

    goto/32 :goto_34

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p1, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    goto :goto_27

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean p1, p2, Lrfv;->g:Z

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1f
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    and-int/lit8 v4, p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_24
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    and-int/lit8 v4, p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_26
    move v2, p1

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2b
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2c
    iget v4, p2, Lrfv;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    if-ne p1, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    and-int/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_30
    if-ne p1, v3, :cond_9

    nop

    goto/32 :goto_16

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p1, v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_33
    if-eq v4, v2, :cond_b

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_b
    :goto_34
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v4, p2, Lrfv;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop
.end method

.method public final p(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, v0, p0}, Lrfv;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance p1, Lrfv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aa:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p1

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    and-int/lit8 p0, p4, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z:I

    nop

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
