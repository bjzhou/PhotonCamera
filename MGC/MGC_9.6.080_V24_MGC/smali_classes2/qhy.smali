.class public Lqhy;
.super Lqfa;
.source "PG"

# interfaces
.implements Lqht;


# static fields
.field private static final b:Ljava/util/concurrent/Callable;


# instance fields
.field public volatile a:Z

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lqfs;

.field private final e:Lqgo;

.field private final f:Ljava/util/HashMap;

.field private final g:Lsuu;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m()Ljava/util/Collection;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    nop

    nop

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    iget-object v0, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrqv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lqhy;->b:Ljava/util/concurrent/Callable;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v1, 0x1

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

    :goto_5
    const v0, 0x16

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

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

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
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lrqv;-><init>(I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iput-object v0, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lqgo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

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
    iput-object p1, p0, Lqhy;->d:Lqfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, Lqoe;->E(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lqfs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lsuu;

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

    :goto_8
    iput-object v0, p0, Lqhy;->g:Lsuu;

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
    const/4 v0, 0x1

    nop

    nop

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

    :goto_a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lqgo;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lqhy;->b:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iput-object v0, p0, Lqhy;->e:Lqgo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/HashMap;

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

    :goto_f
    invoke-direct {p0}, Lqfa;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lqhy;->a:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static j()Landroid/opengl/EGLSync;
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const-wide/16 v3, 0x3038

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-wide v3, v2, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v3, v2, v0}, Landroid/opengl/EGL15;->eglCreateSync(Landroid/opengl/EGLDisplay;I[JI)Landroid/opengl/EGLSync;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const/16 v3, 0x30f9

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

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

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

    :goto_e
    new-array v2, v2, [J

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

    :goto_f
    const v1, 0xc

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    const v0, 0x5

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
.end method


# virtual methods
.method protected final b()Lqfv;
    .locals 6

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1, v2}, Lqfs;->b(Ljava/util/concurrent/Executor;Lqfw;)Lqfs;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    new-instance v0, Lqfv;

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

    :goto_2
    new-instance v2, Lqhx;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lqhx;->a:Lqhx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Ljava/util/ArrayList;

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

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_31

    nop

    nop

    :goto_a
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0}, Lqfv;-><init>(Lqfs;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, p0, v4}, Lqhw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lqoe;->F(Ljava/lang/Iterable;)Lqfs;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v5, Lqfs;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    :goto_18
    const/4 v4, 0x0

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

    :goto_19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

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

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0, v1, v3}, Lqfs;->b(Ljava/util/concurrent/Executor;Lqfw;)Lqfs;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Lqhy;->e:Lqgo;

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

    :goto_22
    invoke-direct {v2, v3}, Lqhx;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_23
    if-nez v3, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v2, Lqhw;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v5, Lqfr;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0}, Lqhy;->1a36313b7ed15ba14e0acb4da569b8b7m()Ljava/util/Collection;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    new-instance v3, Lqfn;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_2b
    goto/32 :goto_6

    nop

    nop

    :goto_2c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_2f
    const/4 v3, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v5, 0x2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_33
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_34
    invoke-interface {v5, v3, v1}, Lqfs;->b(Ljava/util/concurrent/Executor;Lqfw;)Lqfs;

    move-result-object v3

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

    :goto_35
    invoke-interface {v0, v1, v2}, Lqfs;->b(Ljava/util/concurrent/Executor;Lqfw;)Lqfs;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_36
    invoke-direct {v3, v2, v5}, Lqfn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_37
    invoke-direct {v5, v3, v4}, Lqfr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lqix;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Unable to schedule EGLSync!"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lsuu;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lqiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    invoke-direct {v0, p0, v1}, Lqiw;-><init>(Lsui;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Lqiw;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lqhy;->g:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    iget-boolean v1, p0, Lqhy;->a:Z

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
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v0, v1}, Lqiw;-><init>(Lsui;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lsuu;-><init>()V

    :try_start_0
    new-instance v1, Lqhu;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lqhu;-><init>(Lsuu;)V

    invoke-virtual {p0, v1}, Lqhy;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final e()Lqjx;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lqoe;->G(Lqfs;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lqjf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqia;->f()Lqjl;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lqjf;->h()Lqjx;

    move-result-object p0

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
    iget-object p0, p0, Lqhy;->e:Lqgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    check-cast p0, Lqjs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final eh()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    check-cast v1, Lqly;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lqhy;->e:Lqgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lqia;->close()V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lqhy;->1a36313b7ed15ba14e0acb4da569b8b7m()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lqhy;->a:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lqfa;->close()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    invoke-static {v0}, Lqoe;->I(Lqfs;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-static {p0}, Lqoe;->I(Lqfs;)Ljava/lang/Object;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lpke;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lqhy;->k()Lqfv;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_13

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    :goto_19
    check-cast v0, Lqjs;

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

    :goto_1a
    goto/32 :goto_16

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, v2}, Lpke;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "Attempting to execute task on a GLContext that is already closed!"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lqhy;->a:Z

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

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqhy;->c:Ljava/util/concurrent/Executor;

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
.end method

.method public final f(Lqja;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lqhv;

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

    :goto_2
    invoke-direct {p1}, Lqhv;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lqhy;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqhy;->d:Lqfs;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lqoe;->H(Lqfs;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/Object;Lrtm;)Lqly;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

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

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    new-instance v1, Lqly;

    nop

    nop

    nop

    invoke-direct {v1, p2}, Lqly;-><init>(Lqlt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrtq;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    nop

    throw p0

    nop

    :goto_4
    iget-object p0, v1, Lqly;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    nop

    nop

    nop

    if-eqz p0, :cond_1

    nop

    nop

    iget-object p0, v1, Lqly;->a:Lqlx;

    nop

    nop

    iget-object p0, p0, Lqlx;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p0, v1, Lqly;->a:Lqlx;

    nop

    nop

    new-instance p1, Lqly;

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Lqly;-><init>(Lqlx;)V

    monitor-exit v0

    nop

    nop

    nop

    return-object p1

    nop

    nop

    :cond_1
    new-instance p0, Lqlv;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lqlv;-><init>()V

    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v1, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lqly;

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lqhy;->f:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const v0, 0x8

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final i()Lqjs;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p0}, Lqoe;->G(Lqfs;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    check-cast p0, Lqjs;

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
    iget-object p0, p0, Lqhy;->e:Lqgo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected k()Lqfv;
    .locals 0

    goto/32 :goto_1

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
    sget-object p0, Lqfu;->a:Lqfv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lqhy;->j()Landroid/opengl/EGLSync;

    move-result-object v0

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

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_7

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lqoe;->z(Landroid/opengl/EGLSync;)Lqix;

    move-result-object v0

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Lqix;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lqix;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {v0}, Lqix;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqhy;->g:Lsuu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Lqjs;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lqhy;->e:Lqgo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lqgo;->i(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop
.end method
