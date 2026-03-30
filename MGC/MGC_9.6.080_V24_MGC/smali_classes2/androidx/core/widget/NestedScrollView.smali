.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Ldvm;
.implements Ldvj;


# static fields
.field private static final f:F

.field private static final g:Ldxq;

.field private static final h:[I


# instance fields
.field private A:I

.field private B:Ldxs;

.field private final C:Ldvn;

.field private final D:Ldvk;

.field private E:F

.field public a:Landroid/widget/OverScroller;

.field public b:Landroid/widget/EdgeEffect;

.field public c:Landroid/widget/EdgeEffect;

.field final d:Ldxr;

.field e:Ldve;

.field private final i:F

.field private j:J

.field private final k:Landroid/graphics/Rect;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Landroid/view/VelocityTracker;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private final x:[I

.field private final y:[I

.field private z:I


# direct methods
.method private final 175bafa759041016accb75ef876de5d9m(II[I)V
    .locals 10

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    move v8, p2

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

    :goto_3
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget v1, p3, v0

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

    :goto_5
    sub-int v4, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

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

    :goto_d
    const v0, 0x1e

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

    :goto_e
    move-object v9, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    const/4 v0, 0x1

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

    :goto_10
    add-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    aput v1, p3, v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    :goto_14
    sub-int v6, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v7, 0x0

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

    :goto_17
    invoke-virtual/range {v2 .. v9}, Ldvk;->g(IIII[II[I)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p3, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop
.end method

.method private final 21017490f1e4e968f513520349816008m(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->b(Landroid/graphics/Rect;)I

    move-result p1

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

    :goto_8
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final 58bdc013cbfa0784191428aca07544ffm(III)Z
    .locals 17

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v9, v14

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int v2, v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    move/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4
    move-object v9, v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v9, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v8, :cond_1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move/from16 v16, v13

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v9, v0, :cond_2

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    :goto_f
    if-eqz v9, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    return v8

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5a

    nop

    nop

    :goto_13
    move/from16 v1, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_15
    const/4 v6, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    if-nez v16, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v8, v13

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    const/4 v13, 0x1

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

    :goto_1d
    invoke-virtual {v0, v6}, Landroidx/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v14, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    if-nez v16, :cond_5

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_20
    if-nez v11, :cond_6

    nop

    goto/32 :goto_22

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    :goto_21
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    if-lt v15, v3, :cond_7

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_62

    nop

    nop

    :goto_28
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/2addr v4, v5

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

    :goto_2c
    goto/16 :goto_57

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    if-gt v8, v12, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_8
    :goto_2f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v1, v12, :cond_9

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    :goto_32
    const v0, 0x9

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

    nop

    :goto_33
    if-lt v8, v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    move v8, v13

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_35
    if-eq v1, v12, :cond_b

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_b
    :goto_36
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-ge v15, v8, :cond_c

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ge v2, v5, :cond_d

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3a
    move v11, v13

    nop

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    :goto_3c
    move/from16 v11, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3d
    if-lt v2, v15, :cond_e

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_33

    nop

    nop

    :goto_3e
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_2

    nop

    nop

    :goto_41
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v9, v1}, Landroid/view/View;->requestFocus(I)Z

    :goto_46
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

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

    :goto_48
    if-lt v10, v7, :cond_f

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v8, :cond_10

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_10
    :goto_4a
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v9, :cond_11

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_0

    nop

    nop

    :goto_4c
    if-eq v1, v12, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4d
    const/16 v12, 0x21

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v0, v2, v3, v13, v13}, Landroidx/core/widget/NestedScrollView;->6a76c551e4658c5f4308c862164e4dd9m(IIIZ)I

    goto/32 :goto_1a

    nop

    nop

    :goto_50
    move/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_51
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto :goto_5e

    nop

    nop

    :goto_59
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5b
    if-le v3, v4, :cond_13

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_13
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5c
    if-lt v2, v8, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_24

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

    :goto_5e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sub-int/2addr v2, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_60
    goto :goto_57

    nop

    :goto_61
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_1b

    nop

    nop

    :goto_65
    goto/32 :goto_4c

    nop

    nop

    nop
.end method

.method private final 5b7bb05b5fd6d37dbb26e03fa57e326fm()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 6a76c551e4658c5f4308c862164e4dd9m(IIIZ)I
    .locals 16

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v1, v2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    neg-int v2, v10

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v2, v0}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v6, v10, v1, v12, v13}, Landroidx/core/widget/NestedScrollView;->r(IIII)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    move v15, v9

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a
    if-ltz v12, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_f
    move/from16 v2, p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

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

    :goto_11
    move v10, v0

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_13
    move/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->q(II[II[I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v4, v6, Landroidx/core/widget/NestedScrollView;->x:[I

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

    :goto_16
    int-to-float v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_17
    move v15, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_41

    nop

    nop

    :goto_19
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v5, p3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_18

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    move-object/from16 v6, p0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1f
    if-gtz v0, :cond_3

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_20
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_21
    aget v0, v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_22
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->x:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    int-to-float v2, v10

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

    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v13

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_2a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v3, v6, Landroidx/core/widget/NestedScrollView;->y:[I

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

    :goto_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_2d
    move-object/from16 v0, p0

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

    :goto_2e
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_31
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_7e

    nop

    nop

    :goto_35
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    aget v0, v0, v9

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1e

    nop

    nop

    :goto_39
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3b
    if-nez v15, :cond_7

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_7
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_8

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3f
    return v11

    nop

    :goto_40
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_42
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_43
    if-nez v14, :cond_9

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

    :cond_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v5, v6, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v6, v8}, Landroidx/core/widget/NestedScrollView;->o(I)Z

    move-result v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_49
    if-nez v14, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4a
    add-int/2addr v12, v10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v6, v0, v9}, Landroidx/core/widget/NestedScrollView;->p(II)Z

    :goto_4c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v2, v6, Landroidx/core/widget/NestedScrollView;->x:[I

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v6, v9}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_50
    if-eq v8, v9, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->l(II[I[II)Z

    move-result v0

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

    :goto_52
    int-to-float v4, v4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

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

    :goto_54
    if-eq v0, v9, :cond_d

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_55
    sub-float/2addr v3, v0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_57
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_58
    goto :goto_60

    nop

    :goto_59
    goto/32 :goto_5e

    nop

    nop

    :goto_5a
    move v14, v1

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_6

    nop

    nop

    :goto_5c
    if-eqz v8, :cond_e

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move v14, v9

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move/from16 v10, p1

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

    :goto_5f
    move v11, v1

    nop

    nop

    :goto_60
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_61
    move/from16 v7, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_63
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sub-int v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_66
    sub-int v2, v0, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_67
    move-object/from16 v0, p0

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

    :goto_68
    add-int/2addr v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, v6, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6a
    sub-int/2addr v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_6b
    invoke-static {v1, v2, v3}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6c
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    :goto_6d
    goto/32 :goto_73

    nop

    nop

    :goto_6e
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6f
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_5a

    nop

    nop

    :goto_72
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_73
    if-eq v8, v9, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4e

    nop

    nop

    :goto_74
    if-gt v12, v13, :cond_10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-eqz v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v4, v6, Landroidx/core/widget/NestedScrollView;->x:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_77
    div-float/2addr v0, v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object v3, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_79
    aget v0, v0, v9

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_7a
    iget-object v1, v6, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7b
    aput v1, v5, v9

    nop

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

    :goto_7c
    if-lez v0, :cond_12

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_37

    nop

    :goto_7d
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_6c

    nop

    nop

    :goto_7f
    if-eqz p4, :cond_13

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_81
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v4

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

    :goto_82
    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    aget v2, v2, v9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_85
    int-to-float v3, v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_87
    sub-int v3, v10, v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_89
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_74

    nop

    nop

    :goto_8c
    move v11, v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_8d
    div-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_8e
    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_57

    nop

    nop

    :goto_8f
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method private final 7521e341d48b08f214d1dac0738f16d0m(Landroid/view/MotionEvent;)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

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

    :goto_1
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    :goto_6
    goto/32 :goto_8

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->w:I

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

    :goto_a
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->l:I

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    :goto_14
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_13

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    float-to-int v1, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7852ab18ac4bc461fee1a84b3ceac02dm(Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {v0, v1, v3}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    goto/32 :goto_20

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_5
    div-float/2addr v3, v4

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

    :goto_6
    invoke-static {v0, v1, p0}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    if-nez v3, :cond_1

    nop

    goto/32 :goto_25

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

    :goto_9
    invoke-static {v3}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    sub-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_28

    nop

    nop

    :goto_1a
    div-float/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    cmpl-float v3, v3, v1

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

    :goto_1d
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v0, v2

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

    :goto_21
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    return v2

    nop

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

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
.end method

.method private final 7dd154808b1c676d3d63f3a63e9edabfm()V
    .locals 1

    goto/32 :goto_7

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
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

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

.method private final 881c79c34bf9fa64d93830b11a6c3f5am(Landroid/widget/EdgeEffect;I)Z
    .locals 9

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v1, v1

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

    :goto_2
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->i:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr p1, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    mul-double/2addr v1, v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p2, p2

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

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p2, v2

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

    :goto_9
    float-to-double v3, p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-gtz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-double/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    cmpg-float p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    float-to-double v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    sget p2, Landroidx/core/widget/NestedScrollView;->f:F

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

    :goto_13
    invoke-static {p1}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

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

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    return v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v2, 0x3c75c28f    # 0.015f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    float-to-double v5, p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    mul-float/2addr p0, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    const v1, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

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

    :goto_1e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    iget p0, p0, Landroidx/core/widget/NestedScrollView;->i:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    mul-double/2addr v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    neg-int p2, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    double-to-float p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    add-double/2addr v7, v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    div-float/2addr p2, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    const v2, 0x3eb33333    # 0.35f

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

    :goto_29
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    if-ltz p0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 p0, 0x0

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

    :goto_2c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_2d
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

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
.end method

.method private final 92ebcae27b5395a18af07a7e07265cf7m()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_3

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

    :goto_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

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
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ldxq;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Landroidx/core/widget/NestedScrollView;->h:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    double-to-float v0, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    sput-object v0, Landroidx/core/widget/NestedScrollView;->g:Ldxq;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x101017a

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ldxq;

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

    :goto_a
    div-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    sput v0, Landroidx/core/widget/NestedScrollView;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f040509

    nop

    goto/32 :goto_0

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p2, p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Ldxp;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->x:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    invoke-direct {v3, v4, v2}, Ldve;-><init>(Landroid/content/Context;Ldvf;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->n:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p2, p0, Landroidx/core/widget/NestedScrollView;->r:Z

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->e:Ldve;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, -0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->o:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

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

    :goto_11
    invoke-static {p0, p1}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_14
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_52

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

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_41

    nop

    nop

    :goto_19
    const/high16 v2, 0x40000

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    iget-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    new-instance p1, Ldvn;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v2, v2, [I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    nop

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

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->s:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    invoke-direct {v2, p0, v1}, Ldxr;-><init>(Landroid/view/ViewGroup;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

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

    :goto_24
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->C:Ldvn;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_26
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->t:I

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

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-array v3, v2, [I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

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

    nop

    :goto_2b
    const/high16 v3, 0x43200000    # 160.0f

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

    :goto_2c
    new-instance v2, Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_30
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_32
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->u:I

    nop

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

    :goto_33
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v3, Ldve;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->d:Ldxr;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p1, p2}, Ldxp;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v2, Ldxr;

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

    :goto_3b
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3d
    sget-object v2, Landroidx/core/widget/NestedScrollView;->h:[I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    mul-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_40
    const v3, 0x43c10b3d

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x1c

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

    nop

    :goto_43
    invoke-direct {p1}, Ldvn;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p1, p0}, Ldvk;-><init>(Landroid/view/View;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_47
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->v:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_48
    mul-float/2addr v2, v3

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

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :goto_4a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object p1, Landroidx/core/widget/NestedScrollView;->g:Ldxq;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance p1, Ldvk;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4f
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_51
    const v3, 0x3f570a3d    # 0.84f

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_52
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    :goto_53
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private static H(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    const v1, 0x1f

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-eq p0, p1, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_12

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

    nop

    :goto_8
    check-cast p0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_b
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

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

    :goto_10
    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->H(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v1, p0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    return v0

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method private final ad49e23a9e5e6fdec23353cfc00ae3a3m(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->A:I

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

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->p(II)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(I)V

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final ca40d22f1631a8d5d6ec3ccdb7c19696m(IIZ)V
    .locals 8

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    sub-int v6, p1, v4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    :goto_3
    if-eqz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_4
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    sub-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    invoke-direct {p0, p3}, Landroidx/core/widget/NestedScrollView;->ad49e23a9e5e6fdec23353cfc00ae3a3m(Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->j:J

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

    :goto_b
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    :goto_c
    goto/32 :goto_30

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    :goto_10
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_12
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_13
    goto :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

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

    :goto_16
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    nop

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

    :goto_1d
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->j:J

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    const/16 v7, 0xfa

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    add-int/2addr p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

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

    :goto_24
    sub-long/2addr v0, v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/2addr v0, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->d543f409229584e2e064495967092514m()V

    :goto_27
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    goto/32 :goto_34

    nop

    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x19

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2c
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

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

    :goto_2e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    :goto_2f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

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

    :goto_30
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

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

    :goto_31
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_32
    sub-int/2addr v1, v2

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

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    const-wide/16 v2, 0xfa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_37
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

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

    :goto_38
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_39
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

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
    return-void

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f7d741b9f73dfcce09fb36b4976357ddm(Landroid/view/View;II)Z
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    if-le p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

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

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-ge p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

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

    :goto_5
    const/4 p0, 0x0

    nop

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

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr p1, p2

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

    :goto_8
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr p1, p2

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

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    add-int/2addr p0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final fb26ed4918cb396a6a9654370d82fcfdm(Landroid/view/View;)Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

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

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

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

    :goto_f
    goto/32 :goto_3

    nop

    :goto_10
    invoke-direct {p0, p1, v1, v0}, Landroidx/core/widget/NestedScrollView;->f7d741b9f73dfcce09fb36b4976357ddm(Landroid/view/View;II)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private static w(III)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lt p1, p2, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return p2

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    if-gt v0, p2, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-ltz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int/2addr p2, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    add-int v0, p1, p0

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
.end method


# virtual methods
.method public final a()F
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->E:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v3, 0x101004d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/util/TypedValue;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

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

    :goto_11
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    const-string v0, "Expected theme to define listPreferredItemHeight."

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v1, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_1b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->E:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    if-nez v2, :cond_2

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

    :cond_2
    goto/32 :goto_1b

    nop

    nop
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "ScrollView can host only one direct child"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "ScrollView can host only one direct child"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "ScrollView can host only one direct child"

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "ScrollView can host only one direct child"

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

.method protected final b(Landroid/graphics/Rect;)I
    .locals 10

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

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

    nop

    :goto_3
    add-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    if-gt v7, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

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

    :goto_8
    iget v5, p1, Landroid/graphics/Rect;->top:I

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b
    sub-int/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_c
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    :goto_e
    sub-int v4, v3, v4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gt v1, v0, :cond_1

    nop

    nop

    goto/32 :goto_34

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

    nop

    :goto_10
    if-lt v3, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gt v7, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    sub-int/2addr p0, v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int/2addr p1, v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    if-lt v3, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    sub-int/2addr v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_5
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

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

    nop

    nop

    :goto_1d
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

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

    :goto_1f
    goto/32 :goto_2d

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    if-gt p0, v0, :cond_6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v7, v8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    :goto_24
    sub-int/2addr p0, v4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_29
    neg-int p1, v2

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    return v1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-gtz v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v3, v2, v0

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

    :goto_33
    goto :goto_2a

    nop

    nop

    :goto_34
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_35
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_36
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_37
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_35

    nop

    nop

    :goto_39
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    add-int/2addr p1, v0

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

    :goto_3d
    iget v7, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3e
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_40
    neg-int p0, p0

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

    :goto_41
    goto :goto_38

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v8, v9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget p0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_45
    add-int/2addr v2, v4

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_47
    neg-int p1, v4

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

    :goto_48
    iget p1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return v1

    nop

    :goto_4a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()I
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p0

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

    :goto_3
    sub-int/2addr v2, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_5
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

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

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sub-int/2addr v2, v3

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

    nop

    :goto_14
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

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

    :goto_1b
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x9

    nop

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

    :goto_1d
    add-int/2addr v0, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cD(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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

    :goto_3
    and-int/lit8 p0, p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result p0

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
    return p0

    nop

    nop

    nop
.end method

.method public final computeHorizontalScrollRange()I
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result p0

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

.method public final computeScroll()V
    .locals 15

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_0
    neg-int v2, v2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_1
    if-ne v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

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

    :goto_3
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1, v4, v3, v2}, Landroidx/core/widget/NestedScrollView;->r(IIII)Z

    goto/32 :goto_36

    nop

    nop

    :goto_7
    aget v3, v3, v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_53

    nop

    nop

    :goto_9
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_b
    sub-int/2addr v1, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_c
    move v4, v1

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

    :goto_d
    mul-float/2addr v6, v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v2, v2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget v3, Lduh;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto/16 :goto_58

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v6}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v6

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

    :goto_17
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->A:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_18
    neg-int v6, v1

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

    :goto_19
    div-float/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

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

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_1e
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    div-float/2addr v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmpl-float v6, v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_22
    cmpl-float v4, v6, v4

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

    :goto_23
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_24
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

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

    :goto_27
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    float-to-int v2, v2

    nop

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

    :goto_2a
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    aput v8, v14, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_2c
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_6

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

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

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

    :goto_31
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    :goto_32
    goto/32 :goto_24

    nop

    nop

    :goto_33
    if-nez v0, :cond_7

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v2, v1, :cond_8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_37
    const v1, 0x20

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_38
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3c
    if-ltz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_9
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_3e
    move-object v9, p0

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aput v8, v5, v0

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

    nop

    :goto_44
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_45
    sub-int v1, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_46
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_48
    div-float v5, v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_49
    invoke-virtual/range {v9 .. v14}, Landroidx/core/widget/NestedScrollView;->q(II[II[I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4d
    sub-int/2addr v1, v3

    nop

    nop

    :goto_4e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4f
    if-gtz v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_76

    nop

    nop

    :goto_50
    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/NestedScrollView;->l(II[I[II)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_52
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_53
    if-gtz v2, :cond_c

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

    :cond_c
    :goto_54
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_56
    const/high16 v5, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_32

    nop

    :goto_58
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    int-to-float v4, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

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

    :goto_5c
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-ltz v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-lez v0, :cond_e

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_40

    nop

    :goto_5f
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v1, :cond_f

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_63
    if-nez v1, :cond_10

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_65

    nop

    nop

    :goto_64
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_65
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    mul-float/2addr v5, v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_69
    int-to-float v4, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v12, p0, Landroidx/core/widget/NestedScrollView;->x:[I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    :goto_6d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->d543f409229584e2e064495967092514m()V

    :goto_6f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

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

    :goto_72
    iget-object v14, p0, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v0, 0xf

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v6, v4, v3}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v6}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_77
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->A:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_79
    sub-int v10, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->y:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7b
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_7d
    return-void

    nop

    nop

    :goto_7e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

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

    :goto_80
    int-to-float v2, v2

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

    :goto_81
    const/4 v7, 0x1

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

    nop

    :goto_82
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    div-float/2addr v4, v2

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {p0, v3}, Ldvy;->b(Landroid/view/View;F)V

    goto/32 :goto_42

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v5, v6, v3}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_1e

    nop

    :goto_89
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/4 v13, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    aget v2, v2, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    goto/32 :goto_6c

    nop

    nop
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result p0

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

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final computeVerticalScrollRange()I
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v1, v2

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

    nop

    :goto_1
    return v1

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

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

    :goto_d
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    const v0, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

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

    :goto_11
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

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

    nop

    nop

    :goto_13
    if-le p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_14

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    return v2

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    sub-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    if-ltz p0, :cond_3

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    add-int/2addr v2, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    add-int/2addr v2, v3

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

    :goto_25
    sub-int v1, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    sub-int/2addr v2, p0

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
.end method

.method public final d(Landroid/view/View;II[II)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    move v1, p2

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

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->l(II[I[II)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    move v2, p3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x0

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

    :goto_d
    move-object v3, p4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/KeyEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Ldvk;->c(FFZ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

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

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Ldvk;->d(FF)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, p3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    move v2, p2

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

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    move-object v4, p4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p0

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

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->l(II[I[II)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    move v4, p4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    move-object v5, p5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v2, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {v0 .. v5}, Ldvk;->f(IIII[I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v1, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    move v3, p3

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v0, v0

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

    :goto_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

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

    :goto_4
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6
    if-nez v6, :cond_0

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v7, v8

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

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

    :goto_13
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5d

    nop

    nop

    :goto_14
    sub-int/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

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

    :goto_18
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_48

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v5

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

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

    :goto_24
    const v1, 0x19

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v0, v5

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v5, 0x43340000    # 180.0f

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v5, v7

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_0

    nop

    nop

    :goto_30
    int-to-float v0, v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v6, v2

    nop

    :goto_35
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v2, v2

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

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_38
    int-to-float v5, v5

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

    nop

    :goto_39
    const/4 v2, 0x0

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

    :goto_3a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    int-to-float v6, v6

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

    :goto_3c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v3

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

    nop

    :goto_3e
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sub-int/2addr v4, v7

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

    nop

    nop

    :goto_40
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_19

    nop

    :goto_41
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    :goto_42
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v7

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_48
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    :goto_4a
    add-int/2addr v2, v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

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

    :goto_4d
    sub-int/2addr v3, v6

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_4f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

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

    :goto_50
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v5

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_52
    add-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v5, :cond_7

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

    :cond_7
    goto/32 :goto_16

    nop

    nop

    :goto_54
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_55
    if-nez v7, :cond_8

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_5a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    :goto_5e
    goto/32 :goto_59

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/view/View;IIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p5, p6, p1}, Landroidx/core/widget/NestedScrollView;->175bafa759041016accb75ef876de5d9m(II[I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final f(Landroid/view/View;IIIII[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->175bafa759041016accb75ef876de5d9m(II[I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final g(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->p(II)Z

    goto/32 :goto_1

    nop

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
    invoke-virtual {p1, p3, p4}, Ldvn;->b(II)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->C:Ldvn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final getBottomFadingEdgeStrength()F
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

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
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

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

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_6
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v0, v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    div-float/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    int-to-float p0, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    sub-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    int-to-float v0, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr v3, v4

    nop

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

    :goto_1f
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    const v0, 0xc

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getNestedScrollAxes()I
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->C:Ldvn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ldvn;->a()I

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

    nop

    nop
.end method

.method protected final getTopFadingEdgeStrength()F
    .locals 1

    goto/32 :goto_4

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

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

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

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2}, Ldvn;->c(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->C:Ldvn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->o(I)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public final i(I)V
    .locals 12

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->ad49e23a9e5e6fdec23353cfc00ae3a3m(Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    move v5, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

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

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v11, 0x0

    nop

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

    :goto_9
    goto/32 :goto_11

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

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

    :goto_d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

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

    :goto_e
    invoke-static {p0, p1}, Ldvy;->b(Landroid/view/View;F)V

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1f

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

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

    :goto_17
    const/4 v6, 0x0

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

    nop

    :goto_18
    const/high16 v8, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x0

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

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_1b
    const/4 v7, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    const v9, 0x7fffffff

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget p1, Lduh;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Ldvk;->a:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final j(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ldvk;->b(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(I)Z
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v2, v3, v4, v4}, Landroidx/core/widget/NestedScrollView;->6a76c551e4658c5f4308c862164e4dd9m(IIIZ)I

    :goto_7
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestFocus()Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v6, v7

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_a
    return v4

    nop

    :goto_b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d
    if-ne p1, v5, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    return v3

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

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

    :goto_13
    if-gtz v1, :cond_2

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

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

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

    :goto_16
    add-int/2addr v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    :goto_18
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

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

    :goto_1a
    if-eq p1, v1, :cond_4

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

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v0, 0x20000

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->fb26ed4918cb396a6a9654370d82fcfdm(Landroid/view/View;)Z

    move-result p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    float-to-int v2, v2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    :goto_22
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    neg-int v2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v1, v2, v5}, Landroidx/core/widget/NestedScrollView;->f7d741b9f73dfcce09fb36b4976357ddm(Landroid/view/View;II)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_26
    const v1, 0x3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_27
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->b(Landroid/graphics/Rect;)I

    move-result v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_29
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

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

    :goto_2b
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto/32 :goto_3c

    nop

    nop

    :goto_2c
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

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

    nop

    nop

    :goto_2e
    if-eq v0, p0, :cond_5

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v1, 0x21

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

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

    :goto_35
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_b

    nop

    :goto_37
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, v2, v3, v4, v4}, Landroidx/core/widget/NestedScrollView;->6a76c551e4658c5f4308c862164e4dd9m(IIIZ)I

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-lt v1, v2, :cond_6

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

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v1, v2}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_3c
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_37

    nop

    nop

    :goto_41
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_47
    sub-int/2addr v1, v6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v5, 0x82

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    :goto_4b
    if-nez p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_b
    goto/32 :goto_1c

    nop

    nop

    :goto_4c
    const/high16 v3, 0x3f000000    # 0.5f

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

    :goto_4d
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4e
    if-eq p1, v5, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/2addr v6, v7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop
.end method

.method public final l(II[I[II)Z
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    move v2, p2

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

    :goto_3
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    move-object v3, p3

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v4, p4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-virtual/range {v0 .. v5}, Ldvk;->e(II[I[II)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    move v5, p5

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final m(Landroid/view/KeyEvent;)Z
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->n(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5
    return v3

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->s(I)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p1, 0x5d

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->isFocused()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

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

    :goto_11
    if-ne v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->k(I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    const/16 v2, 0x82

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

    :goto_18
    if-ne p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1b
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1c
    if-gt v0, v4, :cond_3

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 p1, 0x7b

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    const/16 v4, 0x3e

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_20
    add-int/2addr v0, v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    goto/16 :goto_43

    nop

    :goto_22
    goto/32 :goto_26

    nop

    nop

    :goto_23
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_33

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->s(I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v3

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v4, 0x14

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
    if-ne v0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->n(I)Z

    move-result v3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v0, p1, :cond_6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v0, v4, :cond_7

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_33
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_8
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 p1, 0x5c

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_39
    if-eq p1, p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3b
    const/16 p1, 0x7a

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3c
    if-ne p1, v0, :cond_b

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2f

    nop

    nop

    :goto_3d
    add-int/2addr v0, v4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-gtz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-ne v0, p1, :cond_d

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    const/16 v4, 0x13

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_41
    const/4 v3, 0x0

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

    :goto_42
    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->k(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_5

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_46
    goto/16 :goto_37

    nop

    :goto_47
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_49
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

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

    :goto_4d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->n(I)Z

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->s(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_52
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return p0

    nop

    :goto_54
    goto/32 :goto_e

    nop

    nop

    :goto_55
    const v1, 0xb

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

    :goto_56
    if-nez p1, :cond_f

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sub-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_58
    if-ne v0, v4, :cond_10

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

    :cond_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_43

    nop

    nop

    :goto_5a
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5b
    if-ne v0, v4, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-int v0, v0, v1

    nop

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

    :goto_5d
    if-nez p0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_68

    nop

    nop

    :goto_5e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-ne v1, p1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_13
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/16 v5, 0x21

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->n(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_65
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_66
    return v3

    nop

    :goto_67
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_68
    return v1

    nop

    :goto_69
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method protected final measureChild(Landroid/view/View;II)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget p0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

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

    :goto_3
    invoke-static {p2, v0, p0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    nop

    goto/32 :goto_f

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

    nop

    nop

    :goto_9
    invoke-static {p2, p5, p0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p0

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

    nop

    :goto_a
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

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
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int/2addr p5, p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/2addr p5, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

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

    :goto_10
    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

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

    :goto_11
    add-int/2addr p5, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p5, p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final n(I)Z
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    sub-int/2addr v2, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

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

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    add-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-direct {p0, p1, v1, v0}, Landroidx/core/widget/NestedScrollView;->58bdc013cbfa0784191428aca07544ffm(III)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iput v2, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    iput v2, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    add-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_1c
    return p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    :goto_21
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v0, 0x82

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

    :goto_26
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final o(I)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ldvk;->h(I)Z

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1d

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

    nop

    nop

    :goto_2
    cmpl-float v3, v1, v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5
    move v1, v6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Ldve;->a(Landroid/view/MotionEvent;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    move v6, v4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_9
    neg-int v1, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    float-to-int v4, v4

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

    :goto_b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v0, 0x10

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    move v0, v1

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

    :goto_14
    float-to-int v1, v1

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

    :goto_15
    move v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v1, 0x400000

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

    :goto_17
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_19
    invoke-direct {p0, v1, v4, v3, v2}, Landroidx/core/widget/NestedScrollView;->6a76c551e4658c5f4308c862164e4dd9m(IIIZ)I

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x18

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_2

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

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1c
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

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

    :goto_1f
    return v2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_35

    nop

    nop

    :goto_21
    const/16 v2, 0x2002

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    :goto_24
    invoke-static {p1, v1}, Ldvu;->m(Landroid/view/MotionEvent;I)Z

    move-result v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    div-int/lit8 v0, v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    move v4, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->e:Ldve;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_30

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1, v0}, Ldvu;->m(Landroid/view/MotionEvent;I)Z

    move-result v1

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

    :goto_30
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->a()F

    move-result v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_22

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p1, v2}, Ldvu;->m(Landroid/view/MotionEvent;I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_37
    move v4, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_38
    const/16 v1, 0x1a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_70

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_49

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

    goto/32 :goto_43

    nop

    nop

    :cond_0
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_4
    if-lt v4, v5, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, -0x1

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

    nop

    :goto_7
    if-ne v0, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_a
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

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

    :goto_b
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    :goto_10
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2, v3}, Landroidx/core/widget/NestedScrollView;->p(II)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    float-to-int v0, v0

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

    :goto_13
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_14
    sub-int/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, " in onInterceptTouchEvent"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "Invalid pointerId="

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1a
    and-int/2addr v2, v4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    :goto_1c
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    if-ge v4, v5, :cond_6

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

    :cond_6
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    :goto_20
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    :cond_8
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_84

    nop

    :goto_25
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v7, v5

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2b
    if-ne v0, v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, p1, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_20

    nop

    nop

    :goto_2e
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2f
    float-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_b

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

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    return p0

    nop

    nop

    :goto_32
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_c
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_37
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_85

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

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

    :goto_3b
    if-eqz p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-gt v4, v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_3e
    if-eq v5, v4, :cond_f

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_70

    nop

    nop

    :goto_40
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_42
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_45
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

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

    :goto_47
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_48
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->7521e341d48b08f214d1dac0738f16d0m(Landroid/view/MotionEvent;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->w:I

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

    :goto_4b
    if-ge v0, v7, :cond_10

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_10
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4c
    return v1

    nop

    nop

    :goto_4d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz p1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_19

    nop

    nop

    :goto_50
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_53
    const-string v0, "NestedScrollView"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_56
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_58
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_59
    if-eqz v0, :cond_12

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

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

    :goto_5c
    const v0, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-gtz v5, :cond_13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_13
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

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

    :goto_60
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

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

    nop

    :goto_61
    iget v4, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_62
    if-eq v0, v2, :cond_14

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_56

    nop

    nop

    :goto_63
    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

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

    nop

    :goto_64
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

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

    :goto_65
    goto/16 :goto_4d

    nop

    nop

    :goto_66
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v1, 0x6

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_68
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v10

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_69
    float-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6a
    if-lt v0, v7, :cond_15

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6d
    iget-boolean p0, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6e
    if-ne v0, v1, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    :cond_16
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    :goto_70
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_71
    iget v5, p0, Landroidx/core/widget/NestedScrollView;->t:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_72
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->92ebcae27b5395a18af07a7e07265cf7m()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

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

    :goto_7b
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->7852ab18ac4bc461fee1a84b3ceac02dm(Landroid/view/MotionEvent;)Z

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sub-int v4, v0, v4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->7852ab18ac4bc461fee1a84b3ceac02dm(Landroid/view/MotionEvent;)Z

    move-result p1

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

    :goto_7e
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_7f
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_82
    if-nez p1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_72

    nop

    nop

    :goto_83
    move v1, v3

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move v1, v3

    nop

    :goto_86
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_8a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_70

    nop

    nop

    :goto_8d
    goto/32 :goto_51

    nop

    nop

    :goto_8e
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_8f
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->z:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_31

    nop

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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result p2

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

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, p5, p1}, Landroidx/core/widget/NestedScrollView;->w(III)I

    move-result p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->B:Ldxs;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p4, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->o:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->n:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    sub-int/2addr p5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean p4, p0, Landroidx/core/widget/NestedScrollView;->n:Z

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

    :goto_19
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->B:Ldxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, v0, Ldxs;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

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

    :goto_1d
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p4, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_20
    sub-int/2addr p5, p3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr p1, p4

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

    :goto_22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

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
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->B:Ldxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2, p0}, Landroidx/core/widget/NestedScrollView;->H(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr p5, p2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    if-ne p1, p2, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->o:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->21017490f1e4e968f513520349816008m(Landroid/view/View;)V

    :goto_2c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p2

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

    :goto_2e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2f
    if-eqz p4, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    if-gtz p2, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_31
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onMeasure(II)V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    sub-int/2addr v2, v3

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

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    sub-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p0, p1}, Landroid/view/View;->measure(II)V

    :goto_a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_e
    invoke-static {p1, v1, p0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

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

    :goto_12
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_17
    const/high16 p1, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    goto/16 :goto_a

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    :goto_1c
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

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

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr v2, v3

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
    const v0, 0x3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    add-int/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p2, 0x0

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

    :goto_28
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    goto/32 :goto_1

    nop

    nop

    :goto_1
    float-to-int p1, p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->i(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x1

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

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return p2

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p4, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p1

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

    :goto_3
    const/4 v5, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->d(Landroid/view/View;II[II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    move-object v4, p4

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v2, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :goto_10
    const v0, 0x1c

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
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

    nop

    :goto_1
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->175bafa759041016accb75ef876de5d9m(II[I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->g(Landroid/view/View;Landroid/view/View;II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onOverScrolled(IIZZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    nop

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

    :goto_9
    const v1, 0x12

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    const/16 p1, 0x82

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    goto :goto_18

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

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

    :goto_13
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_1e

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

    nop

    nop

    :goto_14
    if-eqz p0, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    const/16 p1, 0x21

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v0, :cond_4

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_e

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->fb26ed4918cb396a6a9654370d82fcfdm(Landroid/view/View;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ldxs;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p1, Ldxs;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ldxs;

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->B:Ldxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-direct {v1, v0}, Ldxs;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_a
    new-instance v1, Ldxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iput p0, v1, Ldxs;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->f7d741b9f73dfcce09fb36b4976357ddm(Landroid/view/View;II)Z

    move-result p3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_7

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

    :goto_6
    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    :goto_7
    goto/32 :goto_8

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

    nop

    nop

    :goto_9
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->u(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->b(Landroid/graphics/Rect;)I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    goto/32 :goto_10

    nop

    nop

    :goto_14
    invoke-virtual {p1, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1, p3}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->s:Z

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

    :goto_17
    if-nez p3, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->cD(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

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
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->h(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget v4, p0, Landroidx/core/widget/NestedScrollView;->t:I

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_5
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float v0, v0, v4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8
    const-string v0, " in onTouchEvent"

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_a
    int-to-float v0, p1

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

    nop

    :goto_b
    float-to-int p1, p1

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
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->i(I)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_f
    neg-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_10
    if-nez v9, :cond_1

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_88

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_14
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5c

    nop

    nop

    :goto_16
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_17
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v6, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_3
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v4, :cond_5

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1e
    cmpl-float v4, v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    div-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_20
    float-to-int v3, v3

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

    :goto_21
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->invalidate()V

    :goto_22
    goto/32 :goto_7f

    nop

    nop

    :goto_23
    if-ne v0, v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->881c79c34bf9fa64d93830b11a6c3f5am(Landroid/widget/EdgeEffect;I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_26
    iget-object v8, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_27
    if-gtz v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    int-to-float v10, v6

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v8, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    cmpl-float v9, v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    if-gtz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->z:I

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_30
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->p:Z

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

    :goto_31
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_32
    if-ge v0, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v8, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

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

    :goto_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->d543f409229584e2e064495967092514m()V

    :goto_36
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :cond_b
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_c
    goto/32 :goto_b1

    nop

    :goto_3b
    return v1

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_30

    nop

    nop

    :goto_3d
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

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

    :goto_3e
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_3f
    if-ne v0, v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    :cond_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    float-to-int p1, p1

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_42
    neg-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->7dd154808b1c676d3d63f3a63e9edabfm()V

    goto/32 :goto_d4

    nop

    nop

    :goto_44
    if-eqz v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_46
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_47
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    cmpl-float v8, v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_49
    iget v4, p0, Landroidx/core/widget/NestedScrollView;->t:I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v4, v0, v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_b2

    nop

    nop

    :goto_4d
    if-eqz v0, :cond_f

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_88

    nop

    :goto_50
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sub-int/2addr v6, v3

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v3, p0, Landroidx/core/widget/NestedScrollView;->z:I

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_55
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

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

    :goto_56
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_57
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_58
    if-ne v0, v1, :cond_10

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    neg-int p1, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->92ebcae27b5395a18af07a7e07265cf7m()V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->7dd154808b1c676d3d63f3a63e9edabfm()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5f
    if-nez p0, :cond_11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4

    nop

    nop

    :goto_60
    if-nez v0, :cond_12

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_12
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v8}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v8

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v7

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_63
    iget-object v8, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

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

    :goto_64
    invoke-virtual {p0, v4, v0}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_65
    invoke-static {v8, v9, v7}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    move-result v7

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

    :goto_66
    const-string v0, "Invalid pointerId="

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

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

    :goto_68
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

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

    :goto_6a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

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

    :goto_6b
    if-nez p1, :cond_13

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-gt v4, v7, :cond_14

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_74

    nop

    nop

    :goto_6d
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->z:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_70
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_71
    neg-float v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    :goto_73
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {v6 .. v12}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_76
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->v:I

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_77
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_78
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

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

    :goto_7a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v12

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

    nop

    :goto_7b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->postInvalidateOnAnimation()V

    :goto_7c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v2, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual/range {v6 .. v12}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7f
    sub-int/2addr v6, v4

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->i(I)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_82
    if-nez v4, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_a4

    nop

    nop

    :goto_83
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->z:I

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v9}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_87
    invoke-virtual {p0, v3, v1}, Landroidx/core/widget/NestedScrollView;->p(II)Z

    :goto_88
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-direct {p0, v6, p1, v1, v1}, Landroidx/core/widget/NestedScrollView;->6a76c551e4658c5f4308c862164e4dd9m(IIIZ)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    return v5

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8e
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_90
    sub-int/2addr v6, v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_73

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_95
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_96
    int-to-float v0, v0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    sub-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p1, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

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

    :goto_9a
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_88

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_a0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v8, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    cmpl-float v0, v0, v4

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_a6
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const/16 v1, 0x3e8

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v0, :cond_16

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_aa
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_ad
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_ee

    nop

    nop

    :goto_af
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_b1
    goto/32 :goto_8d

    nop

    nop

    :goto_b2
    goto/32 :goto_5d

    nop

    nop

    :goto_b3
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_b4
    if-nez v0, :cond_17

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_3f

    nop

    nop

    :goto_b5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_b6
    if-nez v4, :cond_18

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b8
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_ba
    invoke-static {v8}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v8

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_bb
    move v4, v7

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_bd
    add-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_be
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->u:I

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

    :goto_bf
    add-int/2addr v6, v4

    nop

    :goto_c0
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_c1
    iput-boolean v5, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    div-float/2addr v10, v8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c4
    iget-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_73

    nop

    nop

    :goto_c7
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-eq v0, v3, :cond_19

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object v8, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    nop

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

    :goto_cc
    iget-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->p:Z

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_cd
    if-ne v0, v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_e8

    nop

    nop

    :goto_ce
    if-eqz v4, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_1b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_d1
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_d2
    iget v7, p0, Landroidx/core/widget/NestedScrollView;->t:I

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

    :goto_d3
    if-eqz v4, :cond_1c

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :cond_1c
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_d4
    goto/16 :goto_88

    nop

    nop

    nop

    :goto_d5
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->i(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d7
    iget-object v9, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_d9
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_da
    if-nez v0, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    :cond_1d
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    if-nez v0, :cond_1e

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

    :cond_1e
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_dc
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_ae

    nop

    nop

    :goto_df
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-static {v8}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    cmpl-float v4, v8, v4

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_e3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-direct {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->881c79c34bf9fa64d93830b11a6c3f5am(Landroid/widget/EdgeEffect;I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    if-eqz v0, :cond_1f

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_1f
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    if-nez p1, :cond_20

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_20
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_e8
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-static {v8, v10, v9}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_ee
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_ef
    const-string v0, "NestedScrollView"

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_f0
    const v1, 0xc

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f2
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_f3
    int-to-float v8, v8

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_f5
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_f6
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->q:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f7
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_f8
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_f9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_fa
    sub-int/2addr v3, p1

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->7521e341d48b08f214d1dac0738f16d0m(Landroid/view/MotionEvent;)V

    goto/32 :goto_95

    nop

    nop

    :goto_fe
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_ff
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_100
    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_101
    if-nez v0, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final p(II)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

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

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Ldvk;->i(II)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final q(II[II[I)V
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    move-object v7, p5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    move v6, p4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    move v4, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    move v2, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-virtual/range {v0 .. v7}, Ldvk;->g(IIII[II[I)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
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
.end method

.method final r(IIII)Z
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, v0, p4}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move p2, v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    goto/32 :goto_25

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_c
    if-gtz p2, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_2
    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    if-ltz p2, :cond_3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    :goto_10
    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move p1, v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_35

    nop

    nop

    :goto_14
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move p1, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/2addr p3, p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move p4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p3, :cond_5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

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

    :goto_24
    move p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_26
    return v0

    nop

    nop

    :goto_27
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    if-gt p3, p4, :cond_6

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_6
    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    move p4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_26

    nop

    nop

    :goto_30
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->a:Landroid/widget/OverScroller;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_33
    move v4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_34
    if-ltz p3, :cond_7

    nop

    goto/32 :goto_2c

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    :goto_35
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->o(I)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_39
    const/4 v6, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3a
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->21017490f1e4e968f513520349816008m(Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_8

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

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

    :goto_7
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->o:Landroid/view/View;

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->b(Landroid/graphics/Rect;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p3, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    const/4 p2, 0x0

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

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_19

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    :goto_8
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    return v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto :goto_1c

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->u(I)V

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    move v0, p2

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    goto/32 :goto_0

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final requestLayout()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final s(I)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, v1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    add-int/2addr v2, v0

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

    :goto_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    const/16 v1, 0x82

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

    :goto_c
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int/2addr v1, v2

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

    :goto_e
    if-gtz v1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    :goto_11
    iget v1, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    iput v2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_15
    sub-int/2addr v1, v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

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

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    :goto_19
    goto :goto_10

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

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

    nop

    nop

    :goto_22
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

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

    :goto_23
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    if-gt v2, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

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

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

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

    :goto_2b
    invoke-direct {p0, p1, v1, v0}, Landroidx/core/widget/NestedScrollView;->58bdc013cbfa0784191428aca07544ffm(III)Z

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    iget v2, v1, Landroid/graphics/Rect;->top:I

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

    :goto_2e
    const/4 v2, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

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

    :goto_30
    if-ltz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_4

    nop

    nop

    :goto_33
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    :goto_34
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_35
    add-int/2addr v2, v0

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

    :goto_36
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/graphics/Rect;

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

    :goto_37
    iput v1, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method

.method public final scrollTo(II)V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

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

    :goto_1
    add-int/2addr v3, v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

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

    :goto_4
    invoke-static {p1, v2, v3}, Landroidx/core/widget/NestedScrollView;->w(III)I

    move-result p1

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

    nop

    :goto_5
    add-int/2addr v0, v5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v3, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    const v1, 0x12

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    sub-int/2addr v4, v5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p2, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    :goto_1b
    sub-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2, v4, v0}, Landroidx/core/widget/NestedScrollView;->w(III)I

    move-result p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

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

    :goto_20
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

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

    :goto_23
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

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

    :goto_28
    sub-int/2addr v4, v5

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

    :goto_29
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2a
    return-void

    nop

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

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
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->D:Ldvk;

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
    invoke-virtual {p0, p1}, Ldvk;->a(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->p(II)Z

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

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final stopNestedScroll()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->j(I)V

    goto/32 :goto_1

    nop

    nop

    nop

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
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final u(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, p1, v0}, Landroidx/core/widget/NestedScrollView;->ca40d22f1631a8d5d6ec3ccdb7c19696m(IIZ)V

    goto/32 :goto_1

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
    const/4 v0, 0x0

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

.method public final v(I)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    neg-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

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

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    invoke-direct {p0, v0, p1, v1}, Landroidx/core/widget/NestedScrollView;->ca40d22f1631a8d5d6ec3ccdb7c19696m(IIZ)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    sub-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop
.end method
