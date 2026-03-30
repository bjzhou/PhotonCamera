.class public abstract Lfgv;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Landroid/hardware/Camera$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()Landroid/os/Handler;
.end method

.method public abstract d()Lfgz;
.end method

.method public abstract e()Lfhg;
.end method

.method public abstract f()Lfhn;
.end method

.method public abstract g()Lfho;
.end method

.method public abstract h()Lfhp;
.end method

.method public i([B)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_c

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfgv;->d()Lfgz;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    :try_start_0
    invoke-virtual {p0}, Lfgv;->h()Lfhp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Less;

    nop

    nop

    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, v2}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const v0, 0x10

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop
.end method

.method public abstract j(Landroid/os/Handler;Lfgp;)V
.end method

.method public k(Z)V
    .locals 3

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

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v1, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

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

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lfgv;->d()Lfgz;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_d

    nop

    :goto_a
    :try_start_0
    invoke-virtual {p0}, Lfgv;->h()Lfhp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lfgu;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, v2}, Lfgu;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public l(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    :try_start_0
    invoke-virtual {p0}, Lfgv;->h()Lfhp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Less;

    nop

    nop

    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, v2, v3}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[S)V

    invoke-virtual {v0, v1}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    invoke-virtual {p0}, Lfgv;->d()Lfgz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

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

    :goto_d
    add-int v0, v0, v1

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
.end method

.method public abstract m(Lfhn;)V
.end method

.method public n()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfgy;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

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

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfgv;->d()Lfgz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lfho;->d()Z

    move-result v0

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Lfgy;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lfgv;->h()Lfhp;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Less;

    nop

    const/16 v3, 0xe

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v0, v3}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v0, Lfgy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "set preview texture"

    nop

    invoke-virtual {v1, v2, v0, v3}, Lfhp;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

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

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lfgv;->g()Lfho;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lfgt;Lfgt;)V
.end method

.method public abstract p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
.end method

.method public abstract q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
.end method

.method public final r(Landroid/os/Handler;Lfgw;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

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

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    :try_start_0
    invoke-virtual {p0}, Lfgv;->h()Lfhp;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v1, Las;

    nop

    nop

    nop

    nop

    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, p2, v2}, Las;-><init>(Lfgv;Landroid/os/Handler;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lfgv;->d()Lfgz;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final s(Lfhn;I)Z
    .locals 7

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    goto :goto_c

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1
    goto/16 :goto_57

    nop

    nop

    :goto_2
    goto/32 :goto_62

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lfhg;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_38

    nop

    nop

    :goto_7
    sget-object v2, Lfhd;->e:Lfhd;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p1, Lfhn;->r:Lfhc;

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

    :goto_a
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    :goto_c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    iget-object v3, v1, Lfhg;->c:Ljava/util/ArrayList;

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

    :goto_10
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    :goto_11
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_1
    goto/32 :goto_6d

    nop

    nop

    :goto_12
    invoke-static {v2, v3}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v2, p1, Lfhn;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_14
    sget-object v2, Lfhb;->g:Lfhb;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Lfhg;->f(Lfhd;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_5b

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lfhg;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    iget v2, p1, Lfhn;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1b
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_6f

    nop

    nop

    :goto_1e
    sget-object p0, Lfhg;->a:Lfht;

    nop

    goto/32 :goto_44

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

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lfhg;->a:Lfht;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Lfhg;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_23
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v2}, Lfhg;->e(Lfhc;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lfgz;->c()Lfhm;

    move-result-object p0

    nop

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

    :goto_2c
    invoke-virtual {v1, v2}, Lfhg;->d(Lfhb;)Z

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_2e
    sget-object v3, Lfhb;->a:Lfhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2f
    iget v3, v1, Lfhg;->n:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, v1, Lfhg;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string p1, "Unsupported settings in applySettings()"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_38
    return v0

    nop

    :goto_39
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, p1, Lfhn;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3b
    sget-object p0, Lfhg;->a:Lfht;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_32

    nop

    nop

    :goto_3d
    sget-object v3, Lfhd;->e:Lfhd;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Lfhd;->name()Ljava/lang/String;

    :goto_40
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-boolean v2, p1, Lfhn;->v:Z

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    :goto_44
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lfgv;->d()Lfgz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object p0, Lfhg;->a:Lfht;

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

    :goto_48
    if-eqz v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-gtz v2, :cond_9

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object p0, Lfgz;->i:Lfht;

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

    nop

    :goto_4b
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_9

    nop

    nop

    :goto_4d
    sget-object p0, Lfhg;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto :goto_5b

    nop

    :goto_4f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lfgv;->e()Lfhg;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object p0, Lfgz;->i:Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_52
    iget v3, v1, Lfhg;->o:I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_26

    nop

    :goto_56
    goto :goto_5b

    nop

    :goto_57
    goto/32 :goto_5c

    nop

    nop

    :goto_58
    goto/16 :goto_5b

    nop

    nop

    :goto_59
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5a
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    :goto_5b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1}, Lfhn;->a()Lfhn;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lfgv;->h()Lfhp;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v0, Lmw;

    nop

    nop

    nop

    nop

    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    move v3, p2

    nop

    invoke-direct/range {v1 .. v6}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I[C)V

    invoke-virtual {p1, v0}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5d
    cmpl-float v2, v2, v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1}, Lfhn;->f()Lfhs;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_5b

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_62
    sget-object p0, Lfhg;->a:Lfht;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_63
    if-lt v2, v3, :cond_c

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const-string v3, "Focus mode not supported... trying FIXED"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_65
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-le v2, v3, :cond_d

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v3, :cond_e

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5

    nop

    nop

    :goto_68
    invoke-virtual {p1}, Lfhn;->e()Lfhs;

    move-result-object v2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_69
    iget-object v3, v1, Lfhg;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, p1, Lfhn;->s:Lfhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6b
    cmpl-float v2, v2, v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6c
    if-nez v3, :cond_f

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_f
    goto/32 :goto_5f

    nop

    nop

    :goto_6d
    invoke-virtual {v2}, Lfhc;->name()Ljava/lang/String;

    :goto_6e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v3}, Lfhg;->f(Lfhd;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_71
    iput-object v2, p1, Lfhn;->s:Lfhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1, v3}, Lfhg;->d(Lfhb;)Z

    move-result v3

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget p1, p1, Lfhn;->p:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return p0

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_4c

    nop

    :goto_77
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
