.class public final synthetic Lcha;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcgo;


# instance fields
.field public final synthetic a:Lchk;


# direct methods
.method public synthetic constructor <init>(Lchk;)V
    .locals 0

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

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcha;->a:Lchk;

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
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(D)D
    .locals 8

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    cmpl-double v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcha;->a:Lchk;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    add-double p0, v2, v0

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr v2, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lchk;->g:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    iget-wide v2, p0, Lchk;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lchk;->e:D

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

    :goto_c
    mul-double/2addr v6, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    add-double/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    add-double/2addr v6, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-wide v4, p0, Lchk;->c:D

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_12
    iget-wide v0, p0, Lchk;->a:D

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    iget-wide v6, p0, Lchk;->b:D

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    iget-wide v2, p0, Lchk;->d:D

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    :goto_1c
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop
.end method
