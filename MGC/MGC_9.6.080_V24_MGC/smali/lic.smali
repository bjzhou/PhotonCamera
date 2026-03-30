.class public Llic;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likm;
.implements Lilq;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ltud;

.field public final c:Lpck;

.field public final d:Llgc;

.field public final e:Lnpq;

.field public final f:Loyd;

.field public final g:Liyt;

.field public h:J

.field public i:I

.field public j:I

.field public k:Z

.field public final l:Lkog;

.field public m:Lijd;

.field public final n:Lhoh;

.field private final o:Lije;

.field private final p:Ljava/util/concurrent/Executor;

.field private q:Z

.field private final r:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v0, "lic"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sput-object v0, Llic;->a:Lsdb;

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
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltud;Lpck;Lije;Llgc;Lkog;Ljava/util/concurrent/Executor;Liof;Lnpq;Lhoh;Loyd;Liyt;)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Llic;->o:Lije;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Llic;->p:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p8, p0, Llic;->e:Lnpq;

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
    iput-object p11, p0, Llic;->g:Liyt;

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

    :goto_4
    iput-object p2, p0, Llic;->c:Lpck;

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

    :goto_5
    iput-object p9, p0, Llic;->n:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Llic;->d:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput-object p5, p0, Llic;->l:Lkog;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object p7, p0, Llic;->r:Liof;

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
    iput-object p1, p0, Llic;->b:Ltud;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iput-object p10, p0, Llic;->f:Loyd;

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


# virtual methods
.method public final declared-synchronized a(Llxm;)V
    .locals 0

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

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean p1, p0, Llic;->k:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Llic;->q:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Linb;Lpge;)V
    .locals 8

    goto/32 :goto_b

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

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget v0, p0, Llic;->j:I

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    iput v0, p0, Llic;->j:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Llic;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Llic;->q:Z

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, p0, Llic;->p:Ljava/util/concurrent/Executor;

    nop

    nop

    new-instance v7, Lkss;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0xc

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    move-object v1, v7

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    move-object v4, p2

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v1, 0x19

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    return-void

    nop

    nop

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
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

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llic;->m:Lijd;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lije;->a()Lijd;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_5
    iget-object p1, p0, Llic;->o:Lije;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-nez p2, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput p1, p0, Llic;->i:I

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

    :goto_a
    iput p1, p0, Llic;->j:I

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(J)V
    .locals 3

    goto/32 :goto_b

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

    nop

    :catchall_0
    move-exception p1

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

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    monitor-exit p0

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

    :goto_5
    monitor-enter p0

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

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Llic;->k:Z

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, p0, Llic;->h:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0x7530

    nop

    nop

    nop

    nop

    nop

    cmp-long p1, p1, v1

    nop

    nop

    nop

    nop

    if-ltz p1, :cond_1

    nop

    nop

    nop

    iput-boolean v0, p0, Llic;->q:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dm(Linb;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

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

    :goto_2
    invoke-virtual {p0, p1}, Llic;->a(Llxm;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final dn(Linb;Lilk;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

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
    invoke-virtual {p0, p1}, Llic;->a(Llxm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Linb;->w:Llko;

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
.end method

.method public final synthetic do(Linb;Lmjq;Lscn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Linb;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Llic;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p0, Llic;->p:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    new-instance v1, Llcc;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x7

    nop

    nop

    invoke-direct {v1, p0, p1, v2}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    monitor-exit p0

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
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    :goto_b
    goto/32 :goto_c

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
    const v1, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final g(Llxm;)V
    .locals 1

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
    iget-object v0, p0, Llic;->r:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Linc;->f(Lilq;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(Linb;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    :try_start_0
    iput-boolean p1, p0, Llic;->k:Z

    nop

    iput-boolean p1, p0, Llic;->q:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic i(Linb;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
