.class public final Lfgg;
.super Lfgv;
.source "PG"


# instance fields
.field public final synthetic a:Lfgm;

.field private final b:Lfgz;

.field private final c:I

.field private final d:Landroid/hardware/Camera;

.field private final e:Lfgn;


# direct methods
.method public constructor <init>(Lfgm;Lfgz;ILandroid/hardware/Camera;Lfgn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfgg;->a:Lfgm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lfgg;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lfgg;->e:Lfgn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lfgv;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfgg;->b:Lfgz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lfgg;->d:Landroid/hardware/Camera;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lfgg;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Landroid/hardware/Camera$Parameters;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfgg;->b:Lfgz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    new-array v1, v1, [Landroid/hardware/Camera$Parameters;

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lfgg;->a:Lfgm;

    nop

    nop

    nop

    iget-object v2, v2, Lfgm;->f:Lfhp;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Las;

    nop

    nop

    nop

    nop

    const/4 v4, 0x7

    nop

    nop

    invoke-direct {v3, p0, v1, v0, v4}, Las;-><init>(Lfgg;[Landroid/hardware/Camera$Parameters;Lfgy;I)V

    iget-object v0, v0, Lfgy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "get parameters"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v0, v4}, Lfhp;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfgm;->g:Lfhm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lfgy;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lfgy;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lfgm;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
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

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    aget-object p0, v1, p0

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

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop
.end method

.method public final c()Landroid/os/Handler;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfgm;->d:Lfgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfgg;->a:Lfgm;

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
.end method

.method public final d()Lfgz;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfgg;->b:Lfgz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lfhg;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lfgn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfgg;->e:Lfgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lfgn;-><init>(Lfgn;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final f()Lfhn;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

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

    nop

    :goto_1
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    invoke-virtual {p0}, Lfgg;->b()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lfgg;->e:Lfgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, p0}, Lfgo;-><init>(Lfhg;Landroid/hardware/Camera$Parameters;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lfgo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Lfho;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfgm;->e:Lfho;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfgg;->a:Lfgm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final h()Lfhp;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfgg;->a:Lfgm;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfgm;->f:Lfhp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final j(Landroid/os/Handler;Lfgp;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    new-instance p1, Less;

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

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lfhp;->a(Ljava/lang/Runnable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lfge;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1, p2}, Lfge;-><init>(Lfgg;Landroid/os/Handler;Lfgp;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0, v0, p2, v1}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfgg;->a:Lfgm;

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

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    const v0, 0x18

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfgm;->f:Lfhp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final m(Lfhn;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lfgv;->s(Lfhn;I)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lfgt;Lfgt;)V
    .locals 8

    goto/32 :goto_9

    nop

    nop

    :goto_0
    check-cast p0, Lfgm;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-direct {v5, p0, p1, p4}, Lfgf;-><init>(Lfgg;Landroid/os/Handler;Lfgt;)V

    :try_start_0
    iget-object p4, p0, Lfgg;->a:Lfgm;

    nop

    nop

    nop

    nop

    iget-object p4, p4, Lfgm;->f:Lfhp;

    nop

    nop

    nop

    new-instance v7, Lgkp;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    move-object v0, v7

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    move-object v3, p2

    nop

    nop

    nop

    nop

    move-object v4, p3

    nop

    nop

    nop

    invoke-direct/range {v0 .. v6}, Lgkp;-><init>(Lfgg;Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lfgt;Landroid/hardware/Camera$PictureCallback;I)V

    invoke-virtual {p4, v7}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v5, Lfgf;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_e

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfgm;->g:Lfhm;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lfgg;->b:Lfgz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Las;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lfhp;->a(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfgg;->a:Lfgm;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, p1, p2, v1}, Las;-><init>(Lfgv;Landroid/os/Handler;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lfgm;->f:Lfhp;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Las;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfgm;->f:Lfhp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfgg;->a:Lfgm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

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
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lfhp;->a(Ljava/lang/Runnable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, p1, p2, v1}, Las;-><init>(Lfgv;Landroid/os/Handler;Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
