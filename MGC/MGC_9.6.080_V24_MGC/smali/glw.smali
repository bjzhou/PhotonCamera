.class final Lglw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lsuu;

.field final synthetic b:Lsuu;

.field final synthetic c:Z

.field final synthetic d:Lglx;


# direct methods
.method public constructor <init>(Lglx;Lsuu;Lsuu;Z)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lglw;->b:Lsuu;

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
    iput-object p1, p0, Lglw;->d:Lglx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lglw;->a:Lsuu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p4, p0, Lglw;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lglw;->c:Z

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lglw;->b:Lsuu;

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

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

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

    :goto_6
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lglw;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lglw;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    check-cast p1, Landroid/view/Surface;

    nop

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

    nop

    :goto_3
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p1, Lgth;->k:Lgtg;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgtg;->d:Lgtg;

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Lrrf;->x(Z)V

    iget-object p1, p1, Lgth;->l:Lpbd;

    nop

    nop

    nop

    iget-object p1, p1, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_7
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lglw;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lglw;->a:Lsuu;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p1, Lgth;->j:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lglw;->c:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

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

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lglx;->l:Lgvg;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lglw;->a:Lsuu;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    const-string v1, "Video recorder is closed"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    sget-object v1, Lgst;->b:Lgst;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lglw;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_28

    nop

    :goto_1c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Lgsz;->a:Lpak;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lgth;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Lpak;->b()Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lglw;->b:Lsuu;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lglw;->d:Lglx;

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

    :goto_25
    invoke-virtual {p1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p1, Lgsz;->a:Lpak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_33

    nop

    nop

    :goto_29
    invoke-virtual {v0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Landroid/view/Surface;

    nop

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

    nop

    :goto_2c
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lglw;->b:Lsuu;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Lgth;->b()Lrss;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lgsz;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Lgsz;->a()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Lgvg;->k(Lgst;)Lows;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop
.end method
