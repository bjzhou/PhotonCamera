.class public Lguh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpaf;
.implements Lpah;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lpag;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;

.field public e:Z

.field public f:Z

.field public g:J

.field public h:Luub;

.field private final i:Loyn;

.field private j:Lpci;

.field private k:Lgug;

.field private final l:Ljava/lang/Object;

.field private final m:Lhif;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lguh;->a:Lsdb;

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

    :goto_1
    const-string v0, "guh"

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpag;Loyn;Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;Lhif;)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lguh;->e:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lguh;->d:Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;

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

    :goto_a
    iput-object p2, p0, Lguh;->i:Loyn;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lguh;->f:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lguh;->b:Lpag;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lgug;->a:Lgug;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lguh;->l:Ljava/lang/Object;

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

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_18
    iput-object p4, p0, Lguh;->m:Lhif;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lguh;->c:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_19

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "application/p11-global-meta"

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
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpar;)V
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

    nop
.end method

.method public final c(Lpae;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final d(J)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgug;->d:Lgug;

    nop

    if-ne v1, v2, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    iget-object v1, p0, Lguh;->j:Lpci;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpci;->close()V

    :cond_1
    sget-object v1, Lgug;->d:Lgug;

    nop

    nop

    iput-object v1, p0, Lguh;->k:Lgug;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_2
    iget-object v0, p0, Lguh;->l:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v0, 0x7

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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final f(J)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final g()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final j()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final k(JJ)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final l()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

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

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    nop

    sget-object v2, Lgug;->a:Lgug;

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    sget-object v1, Lguh;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const/16 v2, 0x33a

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Trying to start with state %s"

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_1
    iget-object v1, p0, Lguh;->m:Lhif;

    nop

    nop

    invoke-virtual {v1}, Lhif;->n()Luub;

    move-result-object v1

    nop

    iput-object v1, p0, Lguh;->h:Luub;

    nop

    nop

    nop

    iget-object v1, p0, Lguh;->b:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p0}, Lpag;->d(Lpah;)V

    iget-object v1, p0, Lguh;->i:Loyn;

    nop

    new-instance v2, Lgqe;

    nop

    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lgqe;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lguh;->j:Lpci;

    nop

    nop

    nop

    nop

    sget-object v1, Lgug;->b:Lgug;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lguh;->k:Lgug;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

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

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lguh;->l:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final m(J)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lguh;->l:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p1

    nop

    :try_start_0
    iget-object p2, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lgug;->b:Lgug;

    nop

    nop

    nop

    if-eq p2, v0, :cond_0

    nop

    sget-object p2, Lguh;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

    nop

    nop

    const/16 v0, 0x33c

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    const-string v0, "Trying to stop with state %s"

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit p1

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_0
    sget-object p2, Lgug;->c:Lgug;

    nop

    nop

    nop

    nop

    nop

    iput-object p2, p0, Lguh;->k:Lgug;

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lguh;->b:Lpag;

    nop

    nop

    nop

    nop

    invoke-interface {p2, p0}, Lpag;->h(Lpah;)V

    monitor-exit p1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method
