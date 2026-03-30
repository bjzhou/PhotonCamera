.class public final synthetic Llbp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llbs;

.field public final synthetic b:Landroid/graphics/PointF;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Llbs;Landroid/graphics/PointF;ZZZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llbp;->b:Landroid/graphics/PointF;

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

    :goto_2
    iput-boolean p5, p0, Llbp;->e:Z

    nop

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
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Llbp;->a:Llbs;

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

    nop

    :goto_5
    iput-boolean p4, p0, Llbp;->d:Z

    nop

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

    :goto_6
    iput-boolean p3, p0, Llbp;->c:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 6

    goto/32 :goto_32

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_41

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v4, p0, Llbs;->q:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    move-object v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6
    iget p0, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_7
    iget-object v4, p0, Llbs;->r:Lscn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4, v3}, Lscn;->g(Landroid/graphics/PointF;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_a
    new-instance v0, Lphq;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v0

    nop

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v3}, Lhwy;->d(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lphr;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Llbs;->o:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4, v3}, Lhwy;->e(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1a
    goto/32 :goto_17

    nop

    nop

    :goto_1b
    iget-object v4, p0, Llbs;->q:Lhwy;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    :goto_1d
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v5}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v4, v0, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v2, :cond_8

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

    :cond_8
    :try_start_1
    iget-object p0, p0, Llbs;->o:Lpik;

    nop

    nop

    invoke-virtual {p0}, Lpik;->u()Lpin;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v0, Lphq;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lphr;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v5}, Lphq;-><init>(Lphr;)V

    invoke-virtual {p0, v0}, Lpin;->j(Lpgd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lpin;->close()V
    :try_end_3
    .catch Lpfi; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Llbp;->a:Llbs;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v5, Lphr;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget p0, v3, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v0}, Lpik;->r(Lpgd;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v3}, Llbs;->f(Landroid/graphics/PointF;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    :goto_30
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    iget-boolean v2, p0, Llbp;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_32
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_33
    iget-boolean v0, p0, Llbp;->d:Z

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lphr;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_35
    iget p0, v3, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p0}, Lpin;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v1, p0, Llbp;->c:Z

    nop

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

    nop

    :goto_38
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, p0, Llbp;->b:Landroid/graphics/PointF;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x1

    nop

    :goto_3c
    goto/32 :goto_31

    nop

    nop

    :goto_3d
    if-nez v4, :cond_9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_9
    :goto_3e
    goto/32 :goto_2d

    nop

    nop

    :goto_3f
    iput-object v4, v0, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_41
    iget p0, v3, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method
