.class public Lgzn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Llsi;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field private final f:Llss;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    sput-object v0, Lgzn;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "gzn"

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Llss;Llsi;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lgzn;->e:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lgzn;->f:Llss;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lgzn;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    const v1, 0x2

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
    iput-wide v0, p0, Lgzn;->g:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/ArrayList;

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

    nop

    :goto_11
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_15
    goto/32 :goto_c

    nop

    :goto_16
    iput-object p2, p0, Lgzn;->c:Llsi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    iput-object v0, p0, Lgzn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgzn;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgzn;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgzn;->d:Ljava/util/List;

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

    :goto_5
    invoke-virtual {p0}, Lgzn;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 9

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_6

    nop

    :cond_0
    :try_start_0
    monitor-exit v5

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide v6, 0x7fffffffffffffffL

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lgzn;->f:Llss;

    nop

    nop

    nop

    iget-wide v1, p0, Lgzn;->g:J

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, v0, Llss;->a:Lhzk;

    nop

    nop

    nop

    iget-object v5, v4, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v5

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmp-long v8, v1, v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    add-long/2addr v6, v1

    nop

    nop

    :goto_c
    :try_start_2
    invoke-virtual {v4, v6, v7}, Lhzk;->c(J)I

    move-result v1

    nop

    if-ltz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1}, Lhzk;->g(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    monitor-exit v5

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lgzn;->f:Llss;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v2}, Llss;->a(J)Llso;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    iget v5, v4, Llso;->b:F

    nop

    nop

    iget v6, v3, Llso;->b:F

    nop

    nop

    nop

    nop

    nop

    cmpg-float v5, v6, v5

    nop

    nop

    nop

    if-gez v5, :cond_3

    nop

    nop

    nop

    :cond_2
    move-object v3, v4

    nop

    :cond_3
    iput-wide v1, p0, Lgzn;->g:J

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_4

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

    :cond_4
    :try_start_4
    iget-object v0, p0, Lgzn;->b:Ljava/util/List;

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    iget-object v0, p0, Lgzn;->b:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v6, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_c

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v8, :cond_5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_5
    monitor-exit v5

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
