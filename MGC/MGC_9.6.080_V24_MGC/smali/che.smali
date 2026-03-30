.class public final synthetic Lche;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcgo;


# instance fields
.field public final synthetic a:Lchk;


# direct methods
.method public synthetic constructor <init>(Lchk;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lche;->a:Lchk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop
.end method


# virtual methods
.method public final a(D)D
    .locals 8

    goto/32 :goto_18

    nop

    nop

    :goto_0
    iget-object p0, p0, Lche;->a:Lchk;

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

    :goto_1
    iget-wide v0, p0, Lchk;->a:D

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p0

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    sub-double/2addr p1, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-double/2addr v0, v2

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

    :goto_6
    const v1, 0x5

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
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

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget-wide v6, p0, Lchk;->b:D

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
    iget-wide v0, p0, Lchk;->e:D

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    sub-double/2addr p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    div-double/2addr v2, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v0, p0, Lchk;->g:D

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    div-double/2addr p0, v6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v4, p0, Lchk;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    sub-double/2addr p0, v4

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

    :goto_1a
    div-double p0, p1, v2

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    iget-wide v2, p0, Lchk;->d:D

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    if-gez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v2, p0, Lchk;->f:D

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

    :goto_1f
    cmpl-double v0, p1, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method
