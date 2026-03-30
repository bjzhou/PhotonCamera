.class public final Linf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public a:Z

.field private final b:Lils;

.field private final c:Limf;

.field private final d:Loyd;

.field private final e:F


# direct methods
.method public constructor <init>(Lmmx;Lmmw;Lils;Limf;Loyd;Lhoh;Lows;)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p4, "TemporalBinning"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Line;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p3}, Lqas;-><init>()V

    goto/32 :goto_25

    nop

    nop

    :goto_4
    invoke-virtual {p3, p2}, Lqas;->f(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Line;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-virtual {p6, p3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3, p4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

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

    :goto_8
    check-cast p3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Lqas;->a()Lmmz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2, p0, p4}, Line;-><init>(Linf;Z)V

    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2a

    nop

    nop

    :goto_f
    new-instance p3, Lqas;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3, p2}, Lqas;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_13
    check-cast p3, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p5, p0, Linf;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

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

    :goto_16
    invoke-virtual {p3, p4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p4, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3, p2}, Lqas;->g(Lmmw;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p3, p4}, Lqas;->d(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    const/4 p4, -0x1

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
    invoke-virtual {p3, p4}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p4

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p7, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p4, p0, Linf;->e:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    invoke-interface {p1, p0}, Lmmx;->f(Lmmv;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    invoke-direct {p2, p0, v0}, Line;-><init>(Linf;Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p6, p3}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    iput-object p3, p0, Linf;->b:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    const p4, 0x4479c000    # 999.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p4, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean v0, p0, Linf;->a:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p3, Lhmu;->o:Lhmo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p4, p0, Linf;->c:Limf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    if-gtz p3, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p3, Lhmu;->aq:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lils;->e:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lils;->a:Lils;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    cmpl-float v2, v0, v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Limf;->e()Z

    move-result v0

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

    nop

    nop

    :goto_b
    iget-object p0, p0, Limf;->b:Lijl;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    if-ltz v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Linf;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    if-ne p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Linf;->a:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    :cond_4
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    :goto_15
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    goto/32 :goto_31

    nop

    :goto_17
    const v0, 0x1b

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

    :goto_18
    iget-object v0, p0, Linf;->c:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p0, v0, :cond_6

    nop

    goto/32 :goto_1d

    nop

    :cond_6
    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lils;->b:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, v2

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Linf;->c:Limf;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_20
    cmpg-float v0, v0, v2

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

    :goto_21
    check-cast v0, Ljava/lang/Float;

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

    :goto_22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_23
    iget-boolean p0, p0, Lijl;->i:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Linf;->b:Lils;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_7

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

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_4

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    :goto_2a
    throw v0

    nop

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    :goto_2c
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Limf;->l()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    const v2, -0x3b864000    # -999.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Linf;->d:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p0, :cond_9

    nop

    goto/32 :goto_2d

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop
.end method
