.class public final Ljmz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F

.field public b:D

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

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

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Ljmz;->c:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-wide v0, p0, Ljmz;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Ljmz;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    const v4, 0x3e23d70b    # 0.16000001f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v3, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-ltz v0, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x1

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

    :goto_5
    if-gtz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetSensorMovementTooFast(Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Ljmz;->b:D

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

    nop

    :goto_b
    cmpl-double v2, v0, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmpl-float p0, p0, v4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    if-gtz p0, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p0, Ljmp;->a:Ljava/lang/Object;

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

    nop

    :goto_11
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_12
    iget-boolean v0, p0, Ljmz;->c:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide v5, 0x3f9999999999999aL    # 0.025

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    if-gtz v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget p0, p0, Ljmz;->a:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_14

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    :goto_1e
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v4, 0x3b23d70b    # 0.0025000002f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    const v4, 0x3c23d70b    # 0.010000001f

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    cmpl-double v2, v0, v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_27

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    :goto_28
    cmpg-double v0, v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
