.class public final Lojw;
.super Lojq;
.source "PG"


# instance fields
.field public final g:Landroid/os/IBinder;

.field final synthetic h:Lojy;


# direct methods
.method public constructor <init>(Lojy;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p3, p0, Lojw;->g:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lojw;->h:Lojy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2, p4}, Lojq;-><init>(Lojy;ILandroid/os/Bundle;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method protected final a(Lofz;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lojy;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_3
    iget-object p0, p0, Lojw;->h:Lojy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->t(Lofz;)V

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final c()Z
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const-string v4, "service descriptor mismatch: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    iget-object p0, p0, Lojw;->h:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lojw;->h:Lojy;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    :goto_5
    invoke-virtual {v3}, Lojy;->c()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6
    const-string p0, " vs. "

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v2}, Lojy;->b(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lojw;->g:Landroid/os/IBinder;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    iget-object p0, p0, Lojy;->r:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v3, v4, v0}, Lojy;->A(IILandroid/os/IInterface;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "GmsClient"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lojy;->c()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lojw;->h:Lojy;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lojw;->h:Lojy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lojw;->h:Lojy;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_20
    iget-object v3, p0, Lojw;->h:Lojy;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v3, v4, v0}, Lojy;->A(IILandroid/os/IInterface;)Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v3, :cond_4

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    :goto_2a
    const/4 v3, 0x2

    nop

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

    :goto_2b
    return v1

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_2d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lojw;->g:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lolx;->ag(Ljava/lang/Object;)V

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    nop

    nop
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    :goto_31
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_32
    const-string p0, "service probably died"

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

    :goto_33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    invoke-interface {p0}, Loif;->b()V

    :goto_35
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_37
    const/4 p0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Lojy;->k:Lofz;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method
