.class public final synthetic Lobl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final synthetic a:Lobn;


# direct methods
.method public synthetic constructor <init>(Lobn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

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
    iput-object p1, p0, Lobl;->a:Lobn;

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


# virtual methods
.method public final onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2

    goto/32 :goto_7

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
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p2, p0, Lobn;->c:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p2, p0, Lobn;->b:Z

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
    goto :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->v()Z

    move-result p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lobn;->a()V

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x3c

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    iput-wide p2, p0, Lobn;->d:J

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

    nop

    :goto_f
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide p4, p0, Lobn;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

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

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->u()Z

    move-result p1

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

    :goto_17
    if-eqz p2, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz p1, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long p1, p4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-long p4, p2, p4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

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

    :goto_1d
    iget-object p1, p0, Lobn;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

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
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    :goto_1f
    iget-object p0, p0, Lobl;->a:Lobn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop
.end method
