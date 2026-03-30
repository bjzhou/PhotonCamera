.class public final Lmdg;
.super Lnsi;
.source "PG"


# instance fields
.field final synthetic a:Lsui;


# direct methods
.method public constructor <init>(Lsui;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmdg;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_2

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
    invoke-direct {p0}, Lnsi;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 7

    goto/32 :goto_23

    nop

    nop

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

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

    :goto_3
    invoke-static {p0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    iget-wide v1, p0, Lmdk;->x:J

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

    :goto_5
    new-instance p1, Lmcr;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_0

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

    :goto_c
    iget-object p0, p0, Lmdg;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    aput v1, v2, v0

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
    aput p1, v2, v1

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

    :goto_f
    invoke-direct {p1, v2, v1}, Lmcr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lmdk;->n:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Lmdk;->h(Lmdi;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    iput-wide v1, p0, Lmdk;->x:J

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    :goto_1f
    const-wide/16 v5, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    iget v1, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-long/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lmdk;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop
.end method
