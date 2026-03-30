.class public final Ljlg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Ljlg;->b:I

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lgjc;->a:Lsdb;

    nop

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x16c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    const/16 v2, 0x993

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ljli;->a:Lsdb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    check-cast p1, Lscz;

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

    :goto_14
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Ljli;

    nop

    nop

    iget-object p0, p0, Ljli;->j:Lsuu;

    nop

    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_17
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    const-string v0, "Failed the readiness: %s"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "Error capturing image"

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
    iget v0, p0, Ljlg;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1, v0}, Lsdo;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljli;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p1, Ljkx;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iget-object v0, p1, Ljli;->o:Llad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, p1, v0, v1}, Ljkw;-><init>(Ljkx;IZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v0}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-static {v0, v1, p1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9

    nop

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

    :goto_e
    new-instance v1, Lhos;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Ljlg;->a:Ljava/lang/Object;

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

    nop

    :goto_10
    iget-object v1, v1, Ljli;->g:Lhco;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    iget-object p1, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Llad;->a()Lpcg;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Ljli;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lmwm;->c()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x20

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

    :goto_1b
    invoke-virtual {p0}, Lqpa;->f()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Ljli;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Ljkw;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lpcg;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Ljlg;->b:I

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

    :goto_20
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Ljlg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1, p1, v2}, Lhos;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljli;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    iget-object p1, p1, Ljli;->k:Ljkx;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    iget-object p0, p0, Ljli;->v:Lqpa;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    iget-object p1, p1, Ljli;->f:Lmwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method
