.class public final Lgbc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likm;
.implements Lilp;
.implements Lilg;


# instance fields
.field public final a:Lfdn;

.field private final b:Lije;

.field private final c:Loyn;

.field private final d:Loyd;

.field private final e:Ljava/util/Set;

.field private final f:Lsrr;

.field private final g:Lgbq;

.field private final h:Liko;

.field private final i:Liof;


# direct methods
.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgbc;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgbc;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    xor-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    iget-object v0, p0, Lgbc;->c:Loyn;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private final declared-synchronized 51550bab6b6440a4fd45f825c221b363m(Llxm;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lgbc;->e:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgbc;->c:Loyn;

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lgbq;Liko;Lije;Liof;Loyn;Lfdn;Loyd;Lsrr;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lgbc;->i:Liof;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lgbc;->a:Lfdn;

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
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Lgbc;->d:Loyd;

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

    :goto_6
    iput-object v0, p0, Lgbc;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object p3, p0, Lgbc;->b:Lije;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iput-object p1, p0, Lgbc;->g:Lgbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p8, p0, Lgbc;->f:Lsrr;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lgbc;->h:Liko;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p5, p0, Lgbc;->c:Loyn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Llxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    invoke-direct {p0, p1}, Lgbc;->3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

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

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p1

    nop

    nop
.end method

.method public final b(Linb;Lpge;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2}, Lpge;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final d(Linb;IJLpro;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lgbi;->d(Llxm;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgbc;->g:Lgbq;

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
    invoke-virtual {p0, p1}, Lgbq;->a(Llxm;)Lgbi;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Linb;->w:Llko;

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
.end method

.method public final e(Lgcb;)V
    .locals 6

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Llgi;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Link;->h(J)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p1, Lgcb;->h:Llxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    iget-object v1, v1, Llxc;->b:Lpsf;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    new-instance v2, Lgbt;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7
    sget-object v1, Lioy;->a:Lioy;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p1, Lgcb;->j:Llko;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Link;->a()Linl;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Link;->a()Linl;

    move-result-object v0

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

    :goto_b
    invoke-virtual {v2, v1}, Lpsk;->c(Lpsf;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lj$/time/Duration;->toNanos()J

    move-result-wide v1

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

    :goto_e
    invoke-static {}, Linl;->a()Link;

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

    nop

    :goto_f
    invoke-virtual {v1}, Lcom/google/googlex/gcam/ShotMetadata;->b()J

    move-result-wide v1

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

    nop

    :goto_10
    iput-object v1, v0, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Link;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v3, v1, Llxc;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_13
    check-cast v1, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    iget-object v1, p1, Lgcb;->i:Lijd;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Link;->e(Lpro;)V

    goto/32 :goto_1

    nop

    nop

    :goto_16
    iget-boolean v1, p1, Lgcb;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2}, Lsrr;->a()Lj$/time/Instant;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    iput-object v1, v0, Link;->j:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Llgi;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p1, Lgcb;->h:Llxc;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1c
    iget-boolean v0, p1, Lgcb;->c:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Link;->g(Lj$/util/Optional;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v2, v4, v5}, Lpsf;->i(J)V

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Link;->i(Llko;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p1, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p1, Lgcb;->j:Llko;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Link;->e:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Llxa;->j()Llxm;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    iget-object v1, p1, Lgcb;->h:Llxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_28
    invoke-interface {v1, v2, v3}, Lpsf;->i(J)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p1, Lgcb;->i:Lijd;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2b
    goto/32 :goto_3f

    nop

    nop

    :goto_2c
    iget v0, v0, Llxm;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lgbc;->h:Liko;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v2, p0, p1, v3}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p1, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1, v0, v1}, Liko;->b(Lijd;Lrss;Lioy;)Lrss;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p1, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_33
    invoke-static {v1, v2}, Lsrp;->b(J)Lj$/time/Duration;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, v1, Llxc;->b:Lpsf;

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

    :goto_35
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_36
    iget-object v1, p1, Lgcb;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lgbc;->h:Liko;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p1, p1, Lgcb;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Link;->b()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, v2, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, v1, Llxc;->a:Llxg;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p1, Lgcb;->i:Lijd;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_41
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, p1, Lgcb;->j:Llko;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Llxg;->i()Lpsk;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_45
    iget-object v1, p1, Lgcb;->h:Llxc;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_45

    nop

    nop

    :goto_48
    invoke-virtual {p0, v1, v0, p1}, Liko;->d(Lijd;Linl;Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, p0, Lgbc;->f:Lsrr;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v1}, Llxa;->e()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v1, Llko;->d:Ljava/lang/Object;

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

    :goto_4d
    iget-object v1, p0, Lgbc;->d:Loyd;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Link;->d(Lijd;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop
.end method

.method public final f(Linb;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 13

    goto/32 :goto_2d

    nop

    nop

    :goto_0
    move-object v1, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v11, v12}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_28

    nop

    nop

    :goto_4
    iput-object v6, v2, Lnew;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_5
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_6
    iput-object v6, v2, Lnew;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v7

    nop

    :try_start_0
    iget-object v3, v7, Lgbi;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_c

    nop

    iget-object v3, v7, Lgbi;->d:Ljava/util/List;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_c

    nop

    nop

    iget-boolean v3, v7, Lgbi;->w:Z

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iput-object v3, v7, Lgbi;->y:Lj$/util/Optional;

    nop

    monitor-exit v7

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v9, v7, Lgbi;->k:Lgei;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Link;->b()V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Linb;->w:Llko;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v8, v9}, Lgbe;-><init>(I)V

    goto/32 :goto_4d

    nop

    nop

    :goto_c
    invoke-virtual/range {v7 .. v12}, Lgbi;->n(Lj$/util/Optional;Lj$/util/Optional;Ljava/util/List;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v6, Las;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v12, Lgbh;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    invoke-virtual {v2, p2}, Lnew;->n(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v6, v8, Lnew;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v9, v3}, Lgei;->i(Lmjp;)V

    :goto_13
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Linl;->a()Link;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, v6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v10, v2, Lnew;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    invoke-virtual {v3, v2}, Llvw;->a(Llxm;)Llxa;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v7, Lgbi;->e:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v7, v2}, Lgbi;->k(Llxm;)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1d
    const/16 v9, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    move-object v1, v7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    move-object v4, p2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_20
    throw v0

    nop

    :goto_21
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v8, Lgbe;

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_23
    invoke-interface {v3, v9, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_24
    invoke-virtual {v2, v7, v8}, Link;->h(J)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    invoke-static {}, Lgcb;->a()Lnew;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_27
    invoke-virtual {v0, v6, v1, v2}, Liko;->b(Lijd;Lrss;Lioy;)Lrss;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v7

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_97

    nop

    :goto_2a
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v7

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2b
    if-eqz v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_1
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_2c
    sget-object v2, Lioy;->a:Lioy;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v5, p3

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

    :goto_2f
    invoke-virtual {v2, v5}, Link;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_6b

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Lnew;->l()Lgcb;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_31
    move-object/from16 v5, p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    monitor-enter v7

    nop

    :try_start_3
    iget-object v0, v7, Lgbi;->s:Lgeq;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lgeq;->b:Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v8, Lnew;->c:Ljava/lang/Object;

    nop

    :cond_2
    sget-object v0, Lgbi;->b:Lryy;

    nop

    nop

    nop

    iget-object v1, v7, Lgbi;->z:Lsld;

    nop

    invoke-virtual {v0, v1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lnew;->l()Lgcb;

    move-result-object v1

    nop

    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    iput-object v1, v7, Lgbi;->x:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit v7

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_34
    invoke-direct {v1, v2}, Lgbe;-><init>(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_36
    iput-object v3, v8, Lnew;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_37
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_38
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v12

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_39
    const/4 v2, 0x2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v9, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v5, v10

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v9, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3d
    move-object v10, p0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v3, v9}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3f
    move-object v8, v9

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_40
    invoke-virtual/range {p3 .. p3}, Lcom/google/googlex/gcam/ShotMetadata;->b()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v4, p2

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

    nop

    nop

    :goto_42
    iget-object v6, v0, Lgbc;->b:Lije;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_43
    iput-object v0, v8, Lnew;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_44
    iget-object v3, v0, Lgbc;->g:Lgbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_45
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct/range {v0 .. v5}, Las;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_19

    nop

    nop

    :goto_47
    invoke-virtual {v3, v2}, Lgbq;->a(Llxm;)Lgbi;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    throw v0

    nop

    nop

    :goto_49
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v10}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static/range {p3 .. p3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v10, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_4d
    invoke-virtual {v3, v8}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v3

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4e
    invoke-virtual {v8, p2}, Lnew;->n(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_13

    nop

    nop

    :goto_50
    goto/32 :goto_1c

    nop

    nop

    :goto_51
    invoke-virtual {v2, v3}, Link;->e(Lpro;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_52
    monitor-enter v7

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v8}, Lnew;->l()Lgcb;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    iput-object v0, v7, Lgbi;->x:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_53
    invoke-static {v3}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sget-object v10, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v7}, Lgbi;->i()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v1, Lgbe;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_57
    const v1, 0x5

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_59
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v8, v9}, Lgbe;-><init>(I)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5b
    iput-object v0, v8, Lnew;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v3, v7, Lgbi;->D:Llvw;

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

    :goto_5d
    move-object v7, v8

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5e
    iget-object v0, v0, Lgbc;->h:Liko;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_5f
    move-object v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v2, Lgbi;->b:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_61
    monitor-enter v7

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v1, v7, Lgbi;->t:Lgeq;

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    iget-object v8, v1, Lgeq;->b:Lcom/google/ar/core/Anchor;

    nop

    nop

    :cond_5
    invoke-static {v8}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_6f

    nop

    nop

    :goto_62
    invoke-virtual {v3, v8}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v3

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v9, v3}, Lgei;->e(Lmjp;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct/range {v1 .. v10}, Lgbh;-><init>(Lgbi;Llko;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lgcb;Lgbc;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_65
    throw v0

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit v7

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v3}, Llgi;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_68
    iget-object v6, v3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_69
    iget v3, v2, Llxm;->a:I

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object v3

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v1, v1, Linb;->w:Llko;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {}, Lgcb;->a()Lnew;

    move-result-object v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6d
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_6
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    sget v2, Lryb;->d:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v11, v7, Lgbi;->e:Lsuk;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_70
    invoke-static {v7, v8}, Lsrp;->b(J)Lj$/time/Duration;

    move-result-object v3

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_71
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v6}, Lije;->a()Lijd;

    move-result-object v6

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_73
    move-object v2, v7

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_74
    move-object v9, v10

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v3}, Lj$/time/Duration;->toNanos()J

    move-result-wide v7

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

    :goto_76
    move-object v0, p0

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

    :goto_77
    const/16 v9, 0xae

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

    nop

    :goto_78
    move-object v1, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_8
    goto/32 :goto_96

    nop

    :goto_7a
    iget-object v3, v1, Linb;->w:Llko;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_a3

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v2}, Link;->a()Linl;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v10, v5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_17

    nop

    nop

    :goto_7f
    invoke-virtual {v2, v1}, Link;->i(Llko;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v3, p3

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v7}, Lgbi;->f()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_83
    sget-object v3, Lgbi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move v4, v9

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_85
    iput-object v4, v2, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {p0, v2}, Lgbc;->3fd9578e124c68aa49885b22b61b4ec8m(Llxm;)V

    goto/32 :goto_44

    nop

    nop

    :goto_87
    if-eqz v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_88
    iput-object v3, v2, Lnew;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_89
    invoke-interface {v0}, Llxa;->h()Llxc;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v3, Lmjp;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    return-void

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_7
    monitor-exit v7

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8e
    new-instance v8, Lgbe;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v2, v6}, Link;->d(Lijd;)V

    goto/32 :goto_9

    nop

    nop

    :goto_90
    iget-object v0, v3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput-object v0, v8, Lnew;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v7, v2}, Lgbi;->k(Llxm;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_93
    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_94
    const-string v9, "Missing capture session trace for %s"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_95
    invoke-direct {v0, v5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_21

    nop

    nop

    :goto_97
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_98
    iput-object v3, v2, Link;->e:Lsui;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_99
    monitor-enter v7

    nop

    nop

    :try_start_8
    iget-object v9, v7, Lgbi;->x:Lj$/util/Optional;

    nop

    invoke-virtual {v9}, Lj$/util/Optional;->isEmpty()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_a

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_a3

    nop

    nop

    nop

    nop

    :cond_a
    iget-object v1, v7, Lgbi;->z:Lsld;

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const/4 v9, 0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget v2, v2, Llxm;->a:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9c
    if-nez v9, :cond_b

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    return-void

    nop

    :goto_9e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v6, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a0
    invoke-interface {v6}, Llxa;->h()Llxc;

    move-result-object v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_a2
    :try_start_9
    sget-object v3, Lgbi;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    const/16 v8, 0xb7

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    const-string v8, "Return without processing for shotId:%s, isSessionClosed=%s, groupId:%s"

    nop

    nop

    nop

    nop

    nop

    iget v9, v2, Llxm;->a:I

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    iget-boolean v10, v7, Lgbi;->w:Z

    nop

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    nop

    nop

    nop

    nop

    iget v11, v7, Lgbi;->c:I

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v3, v8, v9, v10, v11}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v7

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_a3
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v3, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v9, v7, Lgbi;->k:Lgei;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    new-instance v3, Llgi;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Llxm;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Linc;->a(Lilg;)V

    goto/32 :goto_3

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

    :goto_3
    invoke-direct {p0, p1}, Lgbc;->51550bab6b6440a4fd45f825c221b363m(Llxm;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Linc;->e(Lilp;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lgbc;->i:Liof;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h(Linb;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i(Linb;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method
