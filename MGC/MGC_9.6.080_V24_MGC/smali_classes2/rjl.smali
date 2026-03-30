.class abstract Lrjl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Lrir;

.field final b:Landroid/graphics/Path;

.field final c:Landroid/graphics/Path;

.field final d:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Lrir;)V
    .locals 3

    goto/32 :goto_2

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

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    new-instance v1, Landroid/graphics/PathMeasure;

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const/4 v2, 0x0

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

    :goto_8
    iput-object v0, p0, Lrjl;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    new-instance v1, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Lrjl;->c:Landroid/graphics/Path;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, p0, Lrjl;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lrjl;->a:Lrir;

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

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_1

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static final i([F)F
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x12

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    aget p0, p0, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aget v0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    double-to-float p0, v0

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

    :goto_c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1c

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

    :goto_e
    float-to-double v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

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

    :goto_10
    goto/32 :goto_12

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
.end method

.method public abstract d(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
.end method

.method public abstract e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lrjk;I)V
.end method

.method public abstract f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
.end method

.method public abstract g()V
.end method

.method final h(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrjl;->a:Lrir;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p5}, Lrjl;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    goto/32 :goto_2

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

    :goto_3
    invoke-virtual {v0}, Lrir;->a()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method
