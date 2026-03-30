.class final Lpkf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lpko;

.field final synthetic b:Lpri;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lows;

.field final synthetic e:Lpkg;


# direct methods
.method public constructor <init>(Lpkg;Lpko;Lpri;Landroid/os/Handler;Lows;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lpkf;->b:Lpri;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lpkf;->a:Lpko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p4, p0, Lpkf;->c:Landroid/os/Handler;

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

    nop

    nop

    :goto_3
    iput-object p5, p0, Lpkf;->d:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpkf;->e:Lpkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpkf;->e:Lpkg;

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

    :goto_1
    iget-object v0, p0, Lpkf;->e:Lpkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpkg;->c:Lpdf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_d

    nop

    nop

    nop

    :goto_7
    :try_start_0
    iget-object v1, p0, Lpkf;->e:Lpkg;

    nop

    iget-object v1, v1, Lpkg;->a:Lpln;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpkf;->a:Lpko;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpln;->d(Lpko;)V

    iget-object v1, p0, Lpkf;->e:Lpkg;

    nop

    nop

    nop

    iget-object v1, v1, Lpkg;->a:Lpln;

    nop

    nop

    iget-object v2, p0, Lpkf;->a:Lpko;

    nop

    nop

    invoke-virtual {v1, v2, v0}, Lpln;->a(Lpko;Ljava/util/Collection;)V

    iget-object v0, p0, Lpkf;->b:Lpri;

    nop

    iget-object v1, p0, Lpkf;->a:Lpko;

    nop

    iget-object v2, p0, Lpkf;->c:Landroid/os/Handler;

    nop

    nop

    nop

    invoke-interface {v0, p1, v1, v2}, Lpri;->h(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "createCaptureSessionByOutputConfigurations"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v4, Lpno;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_b

    nop

    nop

    nop

    :catch_0
    :try_start_1
    iget-object p1, p0, Lpkf;->d:Lows;

    nop

    nop

    nop

    invoke-virtual {p1}, Lows;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_14
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lpkg;->b:Lpcu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v5, v6, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    const v1, 0x6

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    goto :goto_14

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lpkf;->e:Lpkg;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->NKEybwnVT:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_22
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    new-instance v3, Lprp;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Lpkg;->c:Lpdf;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3, v4}, Lprp;-><init>(Lprq;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v4, v5}, Lpno;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    throw p1

    nop

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lpkg;->c:Lpdf;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lpkf;->e:Lpkg;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method
