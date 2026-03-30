.class public final synthetic Libk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field public final synthetic a:Ltxm;

.field public final synthetic b:Ltxm;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lgqg;Ltxm;Lows;Ltxm;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p4, p0, Libk;->b:Ltxm;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Libk;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p1, p0, Libk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Libk;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Libk;->d:Ljava/lang/Object;

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

    :goto_6
    return-void

    nop
.end method

.method public synthetic constructor <init>(Ltxm;Lgjp;Lpdf;Ltxm;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Libk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Libk;->a:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p5, p0, Libk;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Libk;->b:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput-object p3, p0, Libk;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1
    iget-object v3, v0, Lgzk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Libl;->b()Landroid/os/Handler;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_7
    const/16 v6, 0x10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Libk;->b:Ltxm;

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

    :goto_9
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Libk;->e:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, v0, Lgzk;->a:Lows;

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

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v4, Libm;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v5, v4, v6}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_11
    check-cast v1, Lgzk;

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

    nop

    :goto_12
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-enter v3

    nop

    :try_start_0
    const-string v4, "cc-frame-qual-scorer"

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    nop

    nop

    nop

    iput-object v4, v0, Lgzk;->c:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Libk;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v5, v0, v6}, Lgnw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lgzm;

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

    :goto_1b
    check-cast v0, Lgqg;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Libk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    goto/16 :goto_3a

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Libk;->a:Ltxm;

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

    :goto_1f
    invoke-virtual {v0, v1}, Lgzm;->a(Lgzk;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_27

    nop

    nop

    :goto_22
    check-cast p0, Lows;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1f

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

    :goto_24
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5

    nop

    :goto_26
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, v0, Lgqg;->F:Z

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lgzk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object v0, p0, Libk;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2c
    new-instance v5, Lhsx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, p0, Libk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Libl;->b()Landroid/os/Handler;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_30
    iget-object p0, p0, Libk;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4, v5}, Lows;->d(Lpci;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v5, Lgnw;

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

    :goto_34
    invoke-direct {v4, p0, v3, v1, v5}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v3, p0, Libk;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_38
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    throw p0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Libl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Libk;->e:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
