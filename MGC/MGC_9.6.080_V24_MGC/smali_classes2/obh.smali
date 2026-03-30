.class public final Lobh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v5, v1, v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    move-result p1

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

    :goto_6
    const v1, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_8
    aget v5, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v6, v3}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    move v5, v4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    array-length v1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v3, 0x400000

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    :goto_14
    if-ne p1, v1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    :goto_17
    const/4 v4, -0x1

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

    :goto_18
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    iput v0, p0, Lobh;->b:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    if-eq v5, v4, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v6, :cond_4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    :goto_22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop

    :goto_24
    if-lt v2, v1, :cond_5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_d

    nop

    nop

    nop
.end method
