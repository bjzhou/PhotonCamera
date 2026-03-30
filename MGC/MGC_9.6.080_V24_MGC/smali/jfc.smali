.class public Ljfc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljfc;->a:Lsdb;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "jfc"

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

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

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

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

    :goto_6
    invoke-direct {v0}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Ljfc;->b:Ljava/lang/Object;

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

    :goto_d
    iput-wide v0, p0, Ljfc;->d:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Ljfc;->d:J

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    iget-object v2, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    nop

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->abortShot(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    return-void

    nop

    :cond_1
    :try_start_2
    sget-object p1, Ljfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    const/16 v0, 0x893

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const-string v0, "abortShot(): processor hasn\'t been initialized."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljfc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v1, p0, Ljfc;->d:J

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    nop

    cmp-long v5, v1, v3

    nop

    nop

    nop

    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    iget-object v5, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1, v2}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->delete(J)V

    iput-wide v3, p0, Ljfc;->d:J

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_0
    sget-object v1, Ljfc;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    const/16 v2, 0x894

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Calling close() on an already closed processor."

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_2
    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_c
    monitor-exit p0

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

    :goto_d
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(I)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    return-void

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

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    throw p1

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_1
    iget-wide v0, p0, Ljfc;->d:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->endShot(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    sget-object p1, Ljfc;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v0, 0x896

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "endShot(): processor hasn\'t been initialized."

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(IILsxh;Ljava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;ZIJJIJJ)V
    .locals 23

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, v1, Ljfc;->b:Ljava/lang/Object;

    nop

    monitor-enter v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    move-object/from16 v0, p3

    nop

    nop

    iget v6, v0, Lsxh;->e:I

    nop

    nop

    move/from16 v4, p1

    nop

    nop

    nop

    move/from16 v5, p2

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v7, p4

    nop

    nop

    nop

    move-wide/from16 v8, p5

    nop

    move-object/from16 v10, p7

    nop

    move-object/from16 v11, p8

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    move/from16 v13, p10

    nop

    nop

    nop

    move-wide/from16 v14, p11

    nop

    nop

    nop

    nop

    move-wide/from16 v16, p13

    nop

    nop

    nop

    nop

    move/from16 v18, p15

    nop

    move-wide/from16 v19, p16

    nop

    nop

    move-wide/from16 v21, p18

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v22}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->create(IIILjava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;ZIJJIJJ)J

    move-result-wide v3

    nop

    nop

    iput-wide v3, v1, Ljfc;->d:J

    nop

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    cmp-long v0, v3, v5

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    nop

    :goto_1
    invoke-static {v0}, Lrrf;->x(Z)V

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    nop

    :goto_b
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
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

    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

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

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Ljfc;->d:J

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    iget-object v2, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    invoke-virtual {v2, v0, v1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->printDiagnosticsToLog(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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
    :try_start_2
    sget-object v0, Ljfc;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x897

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "printDiagnostics(): processor hasn\'t been initialized."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(I)Z
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Ljfc;->d:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    iget-object v2, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->beginShot(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    sget-object p1, Ljfc;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v0, 0x89a

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "beginShot(): processor hasn\'t been initialized."

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return p0

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    :goto_e
    const v0, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g(ILtcx;Lcom/google/googlex/gcam/DebugParams;)Z
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return p0

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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v1, p0, Ljfc;->d:J

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    invoke-interface {p2}, Ltcx;->a()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p3}, Lcom/google/googlex/gcam/DebugParams;->a(Lcom/google/googlex/gcam/DebugParams;)J

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    move-wide p2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v3, p1

    nop

    move-wide v4, v5

    nop

    nop

    nop

    nop

    nop

    move-wide v6, p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->processZslBurst(JIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    return p0

    nop

    nop

    nop

    :cond_1
    :try_start_2
    sget-object p1, Ljfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/16 p2, 0x89c

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    const-string p2, "processZslBurst(): processor hasn\'t been initialized."

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(ILtcv;)V
    .locals 11

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

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

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    sget-object p1, Ljfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 p2, 0x89b

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "processZslBurst(): processor hasn\'t been initialized."

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_2
    iget-wide v1, p0, Ljfc;->d:J

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    cmp-long v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    iget-object v3, p2, Ltcv;->a:Lcom/google/googlex/gcam/RawWriteView;

    nop

    invoke-static {v3}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    iget-object v3, p2, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    iget-object v3, p2, Ltcv;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    iget-wide v8, v3, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    iget-object v10, p2, Ltcv;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    move v3, p1

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v10}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->processPslFrame(JIJJJLjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(Lcom/google/googlex/gcam/StaticMetadata;IFIZ)Z
    .locals 14

    goto/32 :goto_4

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object v0, Ljfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x89d

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v2, "setOptions(): processor hasn\'t been initialized."

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    move-object v1, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    const/4 v0, 0x1

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

    :goto_c
    monitor-enter p0

    nop

    :try_start_1
    iget-wide v3, v1, Ljfc;->d:J

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v3, v5

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v2, v1, Ljfc;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    nop

    nop

    invoke-static {p1}, Lcom/google/googlex/gcam/StaticMetadata;->c(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    move/from16 v7, p2

    nop

    move/from16 v10, p3

    nop

    nop

    nop

    nop

    nop

    move/from16 v11, p4

    nop

    nop

    move/from16 v12, p5

    nop

    nop

    invoke-virtual/range {v2 .. v13}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->setOptions(JJIZZFIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
