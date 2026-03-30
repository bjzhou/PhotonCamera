.class public Llck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llbv;


# static fields
.field private static final c:Lsdb;


# instance fields
.field public a:I

.field public final b:Lluy;

.field private final d:Lowu;

.field private final e:Z

.field private final f:Lrss;

.field private g:I

.field private final h:Ljava/lang/Object;

.field private final i:Lgvg;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lmbq;->c()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lmbq;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

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

    :goto_5
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_6
    iget-object p0, p0, Llck;->f:Lrss;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Lpin;Lrss;Loeq;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

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
    iget-object p0, p0, Llck;->f:Lrss;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1, p2, p3}, Lmbq;->e(Lpin;Lrss;Loeq;)V

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Llck;->23ce148e54b083367f51e25c7971761em()Z

    move-result v0

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

    :goto_7
    check-cast p0, Lmbq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Llck;->c:Lsdb;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "lck"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lluy;Lowu;Lgvg;Lhoh;Lrss;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object v0, p0, Llck;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput-object p3, p0, Llck;->i:Lgvg;

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Llck;->e:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lhmq;->ar:Lhmn;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p4, p1}, Lhoh;->o(Lhmn;)Z

    move-result p1

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

    :goto_9
    iput-object p2, p0, Llck;->d:Lowu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Llck;->f:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Llck;->b:Lluy;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lrss;)Lsui;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    iget-object p0, p0, Llck;->d:Lowu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, p1, v0}, Llch;-><init>(Llck;Lrss;Lsuu;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Llch;

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

    :goto_4
    const v0, 0xb

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

    :goto_5
    add-int v0, v0, v1

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lsuu;

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

    :goto_8
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object v0, p0, Llck;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Llck;->g:I

    nop

    if-lez v1, :cond_0

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    iput v1, p0, Llck;->g:I

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Llck;->d:Lowu;

    nop

    nop

    nop

    nop

    new-instance v2, Lldq;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lldq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_9
    const v0, 0x19

    nop

    goto/32 :goto_2

    nop

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

    :goto_b
    goto/32 :goto_6

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

.method public final c(Lpin;)Llbu;
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    sget-object p1, Llck;->c:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Llcj;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    invoke-static {v1, v2, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Llcj;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Llck;->h:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v3, p0, Llck;->g:I

    nop

    nop

    const/4 v4, 0x1

    nop

    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    iput v3, p0, Llck;->g:I

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpin;->a()Lpgc;

    move-result-object v3

    nop

    nop

    nop

    const/4 v5, 0x5

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    move-object v6, v3

    nop

    nop

    check-cast v6, Lpjp;

    nop

    iput-object v5, v6, Lpjp;->c:Ljava/lang/Integer;

    nop

    iget-boolean v5, p0, Llck;->e:Z

    nop

    if-eq v4, v5, :cond_1

    nop

    nop

    move v4, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_1
    const/4 v4, 0x2

    nop

    nop

    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    move-object v5, v3

    nop

    nop

    nop

    check-cast v5, Lpjp;

    nop

    nop

    nop

    nop

    nop

    iput-object v4, v5, Lpjp;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lpjp;

    nop

    invoke-virtual {v3}, Lpjp;->c()Lpjq;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Lpin;->b(Lpgd;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Llck;->23ce148e54b083367f51e25c7971761em()Z

    move-result v4

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lrsa;->a:Lrsa;

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_2
    iget-object v4, p0, Llck;->f:Lrss;

    nop

    nop

    nop

    nop

    new-instance v5, Lkzo;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6}, Lkzo;-><init>(I)V

    invoke-virtual {v4, v5}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v4

    nop

    :goto_10
    invoke-direct {p0, v4}, Llck;->da190e616797844b591057d0190e7728m(Lrss;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lsui;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    invoke-interface {v5}, Lsui;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Loeq;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v4, v3}, Llck;->7ecc92917e9c4556cc19f457ddc41af8m(Lpin;Lrss;Loeq;)V

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    iget-wide v4, v3, Loeq;->a:J

    nop

    nop

    :cond_3
    iget-object v4, p0, Llck;->i:Lgvg;

    nop

    nop

    nop

    nop

    iget-wide v5, v3, Loeq;->a:J

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lkxn;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5, v6}, Lkxn;-><init>(J)V

    new-instance v5, Llcd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v3}, Llcd;-><init>(Lkxn;)V

    iget-object v6, v4, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v6, Llaj;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Llaj;->o(Lpuq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, v3, Lkxn;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Llcc;

    nop

    nop

    invoke-direct {v7, v4, v5, v1}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7, v1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v3, Lkxn;->a:Lsuu;

    nop

    nop

    nop

    invoke-interface {v1}, Lsui;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Llck;->23ce148e54b083367f51e25c7971761em()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v1, p0, Llck;->f:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lmbq;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lmbq;->d()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    invoke-direct {p0}, Llck;->23ce148e54b083367f51e25c7971761em()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    invoke-direct {p0}, Llck;->23ce148e54b083367f51e25c7971761em()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_5
    iget-object v1, p0, Llck;->f:Lrss;

    nop

    nop

    nop

    nop

    new-instance v3, Lkzo;

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    invoke-direct {v3, v4}, Lkzo;-><init>(I)V

    invoke-virtual {v1, v3}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v1

    nop

    :goto_11
    invoke-direct {p0, v1}, Llck;->da190e616797844b591057d0190e7728m(Lrss;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lsui;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Loeq;

    nop

    invoke-direct {p0, p1, v1, v3}, Llck;->7ecc92917e9c4556cc19f457ddc41af8m(Lpin;Lrss;Loeq;)V

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    iget-wide p0, v3, Loeq;->a:J

    nop

    goto :goto_12

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    nop

    :cond_6
    :goto_12
    monitor-exit v2

    nop

    nop

    goto/16 :goto_d

    nop

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

    nop

    monitor-exit v2

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop

    nop
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    const/16 v2, 0xcd1

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

    :goto_16
    const-string v1, "Couldn\'t turn on selfie flash"

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
.end method
