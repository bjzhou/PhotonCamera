.class abstract Lssr;
.super Lssv;
.source "PG"


# static fields
.field private static final b:Lsuh;


# instance fields
.field private c:Lrxq;

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lssr;->b:Lsuh;

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

    :goto_3
    invoke-direct {v0, v1}, Lsuh;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lsuh;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const-class v1, Lssr;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public constructor <init>(Lrxq;ZZ)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-boolean p3, p0, Lssr;->h:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lssr;->c:Lrxq;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lrxq;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lssv;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Lssr;->g:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Ljava/lang/Throwable;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lssk;->a(Ljava/lang/Throwable;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-static {p1}, Lssr;->v(Ljava/lang/Throwable;)V

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lsgj;->p()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lssv;->g(Ljava/util/Set;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lssv;->seenExceptions:Ljava/util/Set;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    sget-object v1, Lssv;->a:Lsss;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    instance-of p0, p1, Ljava/lang/Error;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Lssr;->v(Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lssv;->seenExceptions:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p1}, Lssr;->w(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Lssr;->g:Z

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p0, v0}, Lsss;->b(Lssv;Ljava/util/Set;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(ILjava/util/concurrent/Future;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, La;->at(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lssr;->h(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

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

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lssr;->c43d12f4f4da28dd6c943a4effe477b7m(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lssr;->c43d12f4f4da28dd6c943a4effe477b7m(Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static v(Ljava/lang/Throwable;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v6, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v1, p0, Ljava/lang/Error;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto :goto_13

    nop

    nop

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
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_a

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lsuh;->a()Ljava/util/logging/Logger;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

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
    move-object v5, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    sget-object v0, Lssr;->b:Lsuh;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    const-string v0, "Input Future failed with Error"

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    const-string v4, "log"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_16
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method private static w(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method protected final d()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lssk;->isCancelled()Z

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_5
    const v0, 0x11

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lrxq;->em()Lscp;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-virtual {p0}, Lssk;->p()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

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

    nop

    :goto_d
    iget-object v0, p0, Lssr;->c:Lrxq;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    and-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    goto :goto_8

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Ljava/util/concurrent/Future;

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

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1}, Lssr;->s(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop
.end method

.method protected final dA()Ljava/lang/String;
    .locals 1

    goto/32 :goto_6

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
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-super {p0}, Lssv;->dA()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const-string v0, "futures="

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p0, Lssr;->c:Lrxq;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g(Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p0}, Lssr;->w(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lssk;->l()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lssk;->isCancelled()Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method

.method public abstract h(ILjava/lang/Object;)V
.end method

.method public final i(Lrxq;)V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    const-string v3, "Less than 0 remaining futures"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lssv;->seenExceptions:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    move v2, v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lssr;->s(I)V

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lssr;->j()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lssv;->a:Lsss;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Lsss;->a(Lssv;)I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    check-cast v0, Ljava/util/concurrent/Future;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    invoke-direct {p0, v1, v0}, Lssr;->e94656b6137dd01f26085f984afe853em(ILjava/util/concurrent/Future;)V

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lrxq;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public abstract j()V
.end method

.method final q()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lssr;->c:Lrxq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1
    iget-object v0, p0, Lssr;->c:Lrxq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, v0}, Lssq;-><init>(Lssr;Lrxq;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

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

    nop

    :goto_4
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lssr;->c:Lrxq;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_2c

    nop

    nop

    :goto_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lssq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Lsui;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    add-int/lit8 v3, v1, 0x1

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

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lssr;->i(Lrxq;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v4, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v4, :cond_4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lssr;->h:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_33

    nop

    nop

    :goto_19
    invoke-interface {v3, v1, v4}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v3}, Lsui;->isDone()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v4, p0, v1, v2}, Lssp;-><init>(Lssr;ILsui;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    check-cast v3, Lsui;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v1, v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    if-nez v4, :cond_5

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    goto :goto_2c

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lssr;->g:Z

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

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    invoke-interface {v2}, Lsui;->isDone()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Lrxq;->em()Lscp;

    move-result-object v2

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lssr;->c:Lrxq;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    :goto_2f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lrxq;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v1, v2}, Lssr;->r(ILsui;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v1, Lstd;->a:Lstd;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_b

    nop

    nop

    :goto_35
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_38
    invoke-interface {v2, v4, v1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_39
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lrxq;->em()Lscp;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3b
    new-instance v4, Lssp;

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

    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3f
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lssr;->j()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r(ILsui;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p2}, Lsui;->isCancelled()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    iput-object v0, p0, Lssr;->c:Lrxq;

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lssk;->cancel(Z)Z

    goto :goto_1

    nop

    :cond_0
    invoke-direct {p0, p1, p2}, Lssr;->e94656b6137dd01f26085f984afe853em(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto/32 :goto_6

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lssr;->i(Lrxq;)V

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lssr;->i(Lrxq;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public s(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lssr;->c:Lrxq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
