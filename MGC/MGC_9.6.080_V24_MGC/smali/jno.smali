.class public final Ljno;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljnl;


# static fields
.field private static final a:[F

.field private static final b:[F


# instance fields
.field private final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sput-object v1, Ljno;->a:[F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/16 v0, 0x9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

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

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    sput-object v0, Ljno;->b:[F

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

    :goto_9
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    goto/32 :goto_d

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_4

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
    iput-object v0, p0, Ljno;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(FLjng;[FII)V
    .locals 9

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v8, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_47

    nop

    nop

    :goto_3
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3c

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v4, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gt p4, p5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-float/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_c
    sget-object v7, Ljno;->b:[F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float v1, p4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v6, p0, Ljno;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    move v7, v5

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

    :goto_13
    invoke-virtual {p0}, Ljmg;->printStackTrace()V

    :cond_3
    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v3, v3, 0x1

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

    :goto_16
    mul-float/2addr v7, v6

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

    :goto_17
    if-gt p4, p5, :cond_4

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

    :goto_18
    const/high16 v2, 0x40000000    # 2.0f

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

    :goto_19
    new-instance v8, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    :goto_1b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    const v0, 0x4

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

    :goto_1e
    mul-float/2addr v5, v7

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

    :goto_1f
    iget-object p1, p2, Ljng;->g:Ljns;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    div-float/2addr v1, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    :goto_22
    iget-object p0, p0, Ljno;->c:Ljava/util/ArrayList;

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

    :goto_23
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    mul-float/2addr v5, p1

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

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_28
    const v3, 0x3f733333    # 0.95f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float v0, p5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    add-float/2addr v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2b
    iget-object p4, p2, Ljng;->e:Ljmj;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Ljno;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    move v6, v5

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget v7, v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v3, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v6}, Ljns;->j(F)V

    :goto_32
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-ge v3, p1, :cond_3

    nop

    nop

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Landroid/graphics/PointF;

    nop

    nop

    iget-object p4, p2, Ljng;->e:Ljmj;

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_5

    nop

    nop

    nop

    iget p5, p1, Landroid/graphics/PointF;->x:F

    nop

    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    const v0, 0x3ecccccd    # 0.4f

    nop

    nop

    invoke-virtual {p4, p3, p5, p1, v0}, Ljmj;->f([FFFF)V
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto/32 :goto_15

    nop

    nop

    :goto_33
    if-lez v0, :cond_6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    :goto_34
    const v5, 0x3faaaaab

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

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

    :goto_36
    if-eqz p4, :cond_7

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

    :cond_7
    goto/32 :goto_0

    nop

    nop

    :goto_37
    mul-float/2addr v7, p1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    iget-object p1, p2, Ljng;->g:Ljns;

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

    nop

    :goto_39
    const/high16 v6, 0x3f800000    # 1.0f

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

    :goto_3a
    aget v5, v5, v4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v5, Ljno;->a:[F

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

    :goto_3c
    move v7, v6

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_17

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Ljmh;->c()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_2e

    nop

    :goto_42
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    mul-float/2addr v5, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v5, 0x9

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v7, v2

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

    :goto_46
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_47
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_f

    nop

    nop

    nop
.end method
