.class public final Lnmq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnsj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput p2, p0, Lnmq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnmq;->a:Ljava/lang/Object;

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


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnmq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/PointF;

    nop

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

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

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v0}, Lnsj;->a(Landroid/graphics/PointF;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lnmq;->b:I

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
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v1

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
    iget v2, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnmq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

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

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_0

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
    invoke-interface {p0}, Lnsj;->b()V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget v0, p0, Lnmq;->b:I

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
.end method

.method public final f(Landroid/graphics/PointF;)Z
    .locals 7

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lifn;->b:Lign;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-le v2, p1, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_2
    new-instance v0, Landroid/graphics/PointF;

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

    nop

    nop

    :goto_3
    invoke-virtual {v6}, Ligr;->ordinal()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4
    float-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    div-int/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    :goto_7
    goto/32 :goto_50

    nop

    nop

    :goto_8
    iget-object v2, v0, Lign;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_9
    goto/16 :goto_3b

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-ne v6, v5, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lign;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d
    sub-int v4, v2, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_f
    const v1, 0x1b

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ligc;->a()V

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr v2, v0

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

    :goto_14
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_15
    sget-object v3, Ligr;->a:Ligr;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-le p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lign;->getWidth()I

    move-result v2

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

    :goto_18
    if-eq v2, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_37

    nop

    nop

    :goto_1b
    check-cast v6, Ligs;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-le v2, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lign;->getHeight()I

    move-result v3

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1e
    if-le v4, v3, :cond_5

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

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1f
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    :goto_21
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    invoke-direct {p0}, Ltxt;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v6}, Ligs;->c(Ligs;)Ligr;

    move-result-object v6

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_27
    invoke-interface {v6}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lign;->getHeight()I

    move-result v3

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

    :goto_29
    check-cast p0, Lifn;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2a
    iget v4, v0, Lign;->d:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v6, v3, :cond_6

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    iget v2, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_2d
    sub-int/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2e
    div-int/2addr v2, v5

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Lign;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lnmq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v6, v4, :cond_7

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    :goto_32
    div-int/2addr v3, v5

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    :goto_35
    new-instance p0, Ltxt;

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

    :goto_36
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Lign;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v2, v0, Landroid/graphics/Rect;->top:I

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

    :goto_39
    iget v2, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3a
    add-int/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3c
    const v0, 0x13

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3d
    div-int/2addr v3, v5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_3f
    return v1

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_6d

    nop

    nop

    :goto_41
    iget-object v0, p0, Lnmq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_33

    nop

    nop

    :goto_43
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_45
    goto :goto_3b

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sub-int/2addr v2, v6

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

    :goto_48
    iget-object p0, p0, Lnmq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0, v4, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_2c

    nop

    nop

    :goto_4a
    if-ne v2, v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4c
    div-int/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4d
    iget v6, v0, Lign;->d:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p0, v0}, Lnsj;->f(Landroid/graphics/PointF;)Z

    goto/32 :goto_3f

    nop

    nop

    :goto_4f
    iget v4, p1, Landroid/graphics/PointF;->x:F

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

    :goto_50
    iget v0, p0, Lnmq;->b:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v6, v0, Lign;->b:Loyd;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_52
    div-int/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_54
    invoke-direct {p0}, Ltxt;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v4, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v0, Lifn;

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

    :goto_57
    iget-object p0, p0, Lifn;->P:Ligc;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_58
    if-nez v0, :cond_a

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
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_59
    div-int/2addr v2, v5

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_5a
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    float-to-int p1, p1

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

    :goto_5c
    iget v4, v0, Lign;->d:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5d
    iget v6, v0, Lign;->d:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_33

    nop

    nop

    :goto_5f
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_60
    if-nez v6, :cond_b

    nop

    goto/32 :goto_5f

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_61
    add-int v5, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_62
    sub-int/2addr v3, v4

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

    nop

    :goto_63
    if-nez v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_64
    if-ne v2, v4, :cond_d

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v2}, Ligr;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_66
    div-int/2addr v3, v5

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

    :goto_67
    invoke-virtual {v0}, Lign;->getHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance p0, Ltxt;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_69
    div-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6a
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget v0, v0, Lign;->e:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_7

    nop

    nop

    :goto_6e
    check-cast v2, Ligs;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_6f
    iget v3, v0, Landroid/graphics/Rect;->right:I

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

    :goto_70
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v2}, Ligs;->c(Ligs;)Ligr;

    move-result-object v2

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

    :goto_73
    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0}, Lign;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop
.end method
