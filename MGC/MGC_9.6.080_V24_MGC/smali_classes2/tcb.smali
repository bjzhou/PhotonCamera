.class public final synthetic Ltcb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntStringConsumer;


# instance fields
.field public final synthetic a:Lina;


# direct methods
.method public synthetic constructor <init>(Lina;)V
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

    :goto_1
    iput-object p1, p0, Ltcb;->a:Lina;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(ILjava/lang/String;)V
    .locals 3

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p0, v0}, Lilq;->dn(Linb;Lilk;)V

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const-string v1, "HDR+ pipeline reported error for shotId %d: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    check-cast p1, Lilq;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/os/Handler;

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

    :goto_5
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    iget-object p0, p0, Ltcb;->a:Lina;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

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

    nop

    :goto_f
    invoke-virtual {p1}, Lind;->m()Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

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

    :goto_11
    const-string v2, "SHOT LOST:\n\n\"gcam.spatial_merge_processor_enabled\" needs to be disabled in \"Developer Settings\"!!!"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "SpatialMergeProcessor failed"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v1, p1, p2}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lina;->a:Lind;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

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

    :goto_17
    iget-object p1, p0, Lina;->c:Linb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lscz;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    sget-object v0, Linb;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lina;->a:Lind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p2}, Lilk;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_24

    nop

    nop

    :goto_24
    return-void

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_27
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lind;->m()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    iput v0, p1, Linb;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, v2}, L_028;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v1, 0x67e

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2d
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v1, L_028;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Lilk;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v0, "TRACING_ERROR_SHOT"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lina;->c:Linb;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_33
    iget p1, p1, Linb;->u:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Lina;->c:Linb;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop
.end method
