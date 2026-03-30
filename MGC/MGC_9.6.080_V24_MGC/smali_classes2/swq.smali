.class public final Lswq;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(Lcom/google/geo/lightfield/processing/ProgressCallback;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lswq;->c:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Lswq;->a:Ljava/lang/ref/WeakReference;

    nop

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

    :goto_4
    new-instance p2, Ljava/lang/ref/WeakReference;

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

    :goto_5
    iput p2, p0, Lswq;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, v1, v1}, Lswq;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Lswq;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const-wide/16 v1, 0xfa

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lswq;->a()V

    goto/32 :goto_28

    nop

    nop

    :goto_2
    mul-float/2addr v3, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    sub-float v2, v1, v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_29

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_9
    iget v4, p0, Lswq;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v3, 0x3d4ccccd    # 0.05f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    iput v0, p0, Lswq;->c:F

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lswq;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float v3, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    goto :goto_d

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    const/high16 v3, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_19
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Lswq;->b:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    iget p1, p1, Landroid/os/Message;->what:I

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

    nop

    nop

    :goto_1f
    iget v0, p0, Lswq;->c:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sub-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_23
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_5
    :goto_25
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-float/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    cmpl-float v1, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x3f7d70a4    # 0.99f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Lswq;->b:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-gez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    sput-boolean p0, Lswr;->a:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v0, p0, Lswq;->b:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lcom/google/geo/lightfield/processing/ProgressCallback;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v0, p0, Lswq;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_34
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_36
    invoke-interface {p1, v0}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1}, Lswq;->removeMessages(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lswq;->a:Ljava/lang/ref/WeakReference;

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
.end method
