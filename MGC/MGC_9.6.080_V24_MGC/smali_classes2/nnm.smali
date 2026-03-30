.class public Lnnm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Llad;


# direct methods
.method static constructor <clinit>()V
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
    sput-object v0, Lnnm;->a:Lsdb;

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

    :goto_2
    const-string v0, "nnm"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Llad;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnnm;->b:Llad;

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
.end method

.method private static final b(F)F
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

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

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;Landroid/graphics/RectF;Z)Landroid/graphics/PointF;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Negative focus point: %s"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p3, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Lnnm;->b(F)F

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget p2, v0, p2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    sub-float/2addr p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    aget p1, v0, v2

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

    :goto_b
    const/high16 p0, 0x3f800000    # 1.0f

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

    :goto_c
    check-cast v0, Lscz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_e
    cmpg-float v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lpcg;->a()I

    move-result p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    iget v0, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnnm;->b:Llad;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lnnm;->a:Lsdb;

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

    :goto_17
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_19
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

    :goto_1a
    invoke-static {p1}, Lnnm;->b(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_1c
    new-instance p1, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2f

    nop

    :goto_21
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    nop

    nop

    :goto_22
    if-ltz v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_25
    aput p1, v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    const/16 v1, 0x13f1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    int-to-float p0, p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    const/high16 v1, 0x3f000000    # 0.5f

    nop

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

    :goto_2a
    aput p0, v0, v2

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget p1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_32
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_34
    div-float/2addr p1, p2

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

    :goto_35
    iget v1, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    :goto_37
    invoke-virtual {p0}, Llad;->b()Lpcg;

    move-result-object p0

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

    :goto_38
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_39
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/32 :goto_2c

    nop

    nop

    nop
.end method
