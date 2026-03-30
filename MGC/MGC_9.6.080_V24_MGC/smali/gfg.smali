.class public Lgfg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lcom/google/ar/core/Session;

.field public final c:Loyn;

.field public final d:Lpgo;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/Set;

.field public volatile h:Z

.field public i:J

.field public j:J

.field public final k:Lpik;

.field public final l:Lhoh;

.field private final m:Lcom/google/ar/core/RecordingConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lgfg;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "gfg"

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/RecordingConfig;Lhoh;Loyn;Lpik;Lpgo;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lgfg;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    :goto_1
    iput-boolean v1, p0, Lgfg;->h:Z

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

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    iput-object p1, p0, Lgfg;->b:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lgfg;->d:Lpgo;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    iput-object v0, p0, Lgfg;->g:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1c

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

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    :goto_f
    iput-object p3, p0, Lgfg;->l:Lhoh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

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

    :goto_12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p2, p0, Lgfg;->m:Lcom/google/ar/core/RecordingConfig;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lgfg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    iput-wide v0, p0, Lgfg;->j:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    iput-wide v0, p0, Lgfg;->i:J

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

    :goto_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    iput-object p4, p0, Lgfg;->c:Loyn;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    iput-object p5, p0, Lgfg;->k:Lpik;

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

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/Set;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgfg;->g:Ljava/util/Set;

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :cond_2
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lprw;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-nez v2, :cond_2

    nop

    nop

    invoke-interface {v1}, Lprw;->close()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xc

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop
.end method
