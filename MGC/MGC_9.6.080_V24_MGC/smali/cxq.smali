.class public final Lcxq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcxv;


# direct methods
.method public constructor <init>(Lcxv;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcxq;->a:Lcxv;

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


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0xa

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v3, v0

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

    :goto_2
    goto/32 :goto_22

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1e

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    :goto_6
    if-eq v0, v3, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v4, v1, Lcxv;->I:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const v1, 0x4

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

    :goto_a
    const/4 v3, 0x3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v1, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    :goto_10
    const/4 v6, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcxq;->a:Lcxv;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v3, 0x9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v1, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lcxq;->a:Lcxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    const v0, 0x1b

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x7

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

    :goto_19
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    :goto_1c
    iget-object v2, v0, Lcxv;->H:Landroid/view/MotionEvent;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-virtual/range {v1 .. v6}, Lcxv;->x(Landroid/view/MotionEvent;IJZ)V

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    if-ne v1, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    :goto_23
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    iget-object v0, p0, Lcxq;->a:Lcxv;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Lcxv;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_25

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    if-ne v1, v0, :cond_7

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

    :cond_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
