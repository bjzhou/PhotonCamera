.class public final Lrjn;
.super Lrjj;
.source "PG"


# instance fields
.field public final a:Lrjl;

.field public final b:Lrjm;

.field public c:Landroid/graphics/drawable/Drawable;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Z
    .locals 2

    goto/32 :goto_11

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

    :goto_1
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lqqy;->m(Landroid/content/ContentResolver;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrjn;->i:Landroid/content/Context;

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

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

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
    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    cmpl-float p0, p0, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

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

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iget-object v0, p0, Lrjn;->o:Lqqy;

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

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x1

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

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lrir;Lrjl;Lrjm;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p0, p4, Lrjm;->j:Lrjn;

    nop

    nop

    goto/32 :goto_1

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
    iput-object p4, p0, Lrjn;->b:Lrjm;

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

    :goto_3
    iput-object p3, p0, Lrjn;->a:Lrjl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Lrjj;-><init>(Landroid/content/Context;Lrir;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Lrjn;->a:Lrjl;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1
    iget-object v3, v3, Lrjm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_2
    check-cast v3, Lrjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Lrjn;->j:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_5
    iget-object v2, p0, Lrjn;->j:Lrir;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_6
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v5, p0, Lrjn;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v5, v1, -0x1

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrjn;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-lt v1, v3, :cond_1

    nop

    goto/32 :goto_78

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrjn;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_d
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_f
    move v12, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    add-float/2addr v7, v3

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lrjj;->k()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_12
    invoke-virtual/range {v2 .. v7}, Lrjl;->h(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    :goto_14
    iget-object v3, p0, Lrjn;->j:Lrir;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_16
    iget-object v3, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v5, v5, -0x1

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_1a
    move v8, v9

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1b
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

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
    iget-object v3, p0, Lrjn;->a:Lrjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lrjn;->j:Lrir;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual/range {v3 .. v10}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_25
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_26
    move v9, v11

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_27
    instance-of v3, v0, Lrjd;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v7, v4, Lrjk;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_29
    move v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lrjn;->isVisible()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v4, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual/range {v3 .. v10}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual/range {v3 .. v10}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, v4, Lrjm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_31
    goto/16 :goto_93

    nop

    :goto_32
    goto/32 :goto_4f

    nop

    nop

    :goto_33
    iget-object v0, p0, Lrjn;->j:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v3, :cond_4

    nop

    goto/32 :goto_42

    nop

    :cond_4
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_35
    move v9, v11

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_8c

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_8b

    nop

    nop

    :goto_38
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual/range {v3 .. v10}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3b
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_3c
    move v10, v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lrjn;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0}, Lrjn;->166277962e993c138a6b1f0c9b571cc0m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move v10, v2

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

    :goto_40
    goto/32 :goto_7c

    nop

    nop

    :goto_41
    goto/16 :goto_18

    nop

    nop

    :goto_42
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v4, Lrjk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v2, p0, Lrjn;->a:Lrjl;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object v3, v4

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_46
    check-cast v13, Lrjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v4, p1, v5, v3, v6}, Lrjl;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lrjk;I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v12, v4

    nop

    :goto_49
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lrjn;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move v0, v4

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_4d
    iget v4, v13, Lrjk;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v12, :cond_6

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_72

    nop

    nop

    :goto_51
    goto/32 :goto_3e

    nop

    nop

    :goto_52
    invoke-virtual/range {v3 .. v10}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto/32 :goto_92

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lrjj;->j()Z

    move-result v7

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

    :goto_54
    iget-object v6, p0, Lrjn;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_55
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v3, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_58
    check-cast v3, Lrjk;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object v3, v5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v5, p0, Lrjn;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move-object v5, v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5c
    iput v4, v3, Lrjk;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5d
    iget-object v3, v3, Lrjm;->k:Ljava/util/List;

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

    :goto_5e
    iget v9, v3, Lrir;->d:I

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_60
    const/high16 v7, 0x3f800000    # 1.0f

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

    :goto_61
    const v0, 0xb

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v12, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object v3, v4

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_64
    iget-object v4, p0, Lrjn;->a:Lrjl;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_65
    move v2, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v3, p0, Lrjn;->j:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_67
    const/4 v6, 0x0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6a
    iget v11, p0, Lrjj;->n:I

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v5, p0, Lrjn;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    aget v1, v2, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6d
    iget v7, v3, Lrjk;->a:F

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6e
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v8, v4, Lrir;->d:I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_72
    goto/32 :goto_20

    nop

    nop

    :goto_73
    instance-of v3, v0, Lrjw;

    nop

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

    :goto_74
    const/4 v4, 0x1

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_75
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_76
    move-object v3, p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_7a
    if-gtz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_9
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_21

    nop

    nop

    :goto_7c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v4}, Ljava/util/List;->size()I

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

    :goto_7f
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_80
    move v9, v11

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

    :goto_81
    const/4 v10, 0x0

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

    :goto_82
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_83
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_84
    iget v6, p0, Lrjj;->n:I

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

    :goto_85
    iget-object v4, p0, Lrjn;->a:Lrjl;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v4, p0, Lrjn;->j:Lrir;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz v0, :cond_a

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

    :cond_a
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v2, v2, Lrir;->c:[I

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p0}, Lrjn;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eqz v3, :cond_b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    :goto_8b
    move v0, v1

    nop

    :goto_8c
    goto/32 :goto_9d

    nop

    nop

    :goto_8d
    move v7, v8

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

    :goto_8e
    iget v8, v3, Lrir;->d:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_44

    nop

    nop

    :goto_90
    instance-of v5, v4, Lrjo;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_91
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_93
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v3, p0, Lrjn;->a:Lrjl;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_95
    const v1, 0xc

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

    :goto_96
    iget v8, v4, Lrir;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_97
    move v2, v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eqz v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget v8, v3, Lrir;->d:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v8, v3, Lrjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_2f

    nop

    nop

    :goto_9c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9d
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_d
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_9e
    move-object v13, v4

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_a0
    goto/16 :goto_8c

    nop

    nop

    :goto_a1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0, v1}, Lrir;->b(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a3
    iget v6, v13, Lrjk;->b:F

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_a4
    check-cast v3, Lrjd;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_a5
    iget-object v5, p0, Lrjn;->m:Landroid/graphics/Paint;

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

    :goto_a6
    if-nez v1, :cond_e

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

    :cond_e
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v5, p0, Lrjn;->a:Lrjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0}, Lrjj;->f()F

    move-result v5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget v3, v3, Lrjk;->a:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_ab
    if-eqz v0, :cond_f

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_65

    nop

    nop

    :goto_ac
    if-eqz v0, :cond_10

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_9b

    nop

    nop

    :goto_ad
    if-nez v3, :cond_11

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_11
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_af
    iget-object v4, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move v10, v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b1
    iget v2, v0, Lrir;->g:I

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v3, v3, Lrjm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_b3
    move v9, v11

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

    :goto_b4
    iget-object v3, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v5, p0, Lrjn;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v4, v4, Lrjm;->k:Ljava/util/List;

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

    :goto_b7
    invoke-virtual {p0}, Lrjj;->g()F

    move-result v4

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

    :goto_b8
    iget-object v0, p0, Lrjn;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b9
    if-nez v12, :cond_12

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b4

    nop

    nop

    :goto_ba
    iget-boolean v3, v3, Lrjd;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_bb
    move-object v4, p1

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

    :goto_bc
    iget v6, v13, Lrjk;->b:F

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(ZZZ)Z
    .locals 2

    goto/32 :goto_3

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
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Lrjm;->a()V

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrjj;->isRunning()Z

    move-result p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_8
    if-nez p3, :cond_2

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget-object v1, p0, Lrjn;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    :goto_c
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p2, p0, Lrjn;->b:Lrjm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    if-nez v1, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0, p1, p2, p3}, Lrjj;->e(ZZZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lrjm;->d()V

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Lrjn;->166277962e993c138a6b1f0c9b571cc0m()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrjn;->a:Lrjl;

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
    invoke-virtual {p0}, Lrjl;->a()I

    move-result p0

    nop

    goto/32 :goto_2

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
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrjn;->a:Lrjl;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrjl;->b()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public final bridge synthetic getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, -0x3

    nop

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

    nop
.end method
