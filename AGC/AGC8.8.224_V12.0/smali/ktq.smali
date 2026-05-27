.class public final Lktq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkts;

.field private final b:Lkts;

.field private final c:Lkts;

.field private final d:Lkts;

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, v0, Lktq;->e:D

    iput-wide v1, v0, Lktq;->f:D

    new-instance v1, Lkts;

    invoke-direct {v1}, Lkts;-><init>()V

    iput-object v1, v0, Lktq;->a:Lkts;

    new-instance v9, Lktp;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    const-wide v2, 0x4051800000000000L    # 70.0

    invoke-virtual {v1, v2, v3, v9}, Lkts;->b(DLktr;)V

    new-instance v4, Lktp;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v4

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    invoke-virtual {v1, v4}, Lkts;->c(Lktr;)V

    new-instance v1, Lkts;

    invoke-direct {v1}, Lkts;-><init>()V

    iput-object v1, v0, Lktq;->b:Lkts;

    new-instance v11, Lktp;

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    const-wide v4, 0x3ff199999999999aL    # 1.1

    invoke-virtual {v1, v4, v5, v11}, Lkts;->b(DLktr;)V

    new-instance v1, Lkts;

    invoke-direct {v1}, Lkts;-><init>()V

    iput-object v1, v0, Lktq;->c:Lkts;

    new-instance v11, Lktp;

    const/4 v6, 0x3

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    invoke-virtual {v1, v2, v3, v11}, Lkts;->b(DLktr;)V

    new-instance v2, Lktp;

    const/4 v14, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v18}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    invoke-virtual {v1, v2}, Lkts;->c(Lktr;)V

    new-instance v1, Lkts;

    invoke-direct {v1}, Lkts;-><init>()V

    iput-object v1, v0, Lktq;->d:Lkts;

    new-instance v9, Lktp;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    const-wide v2, 0x405f400000000000L    # 125.0

    invoke-virtual {v1, v2, v3, v9}, Lkts;->b(DLktr;)V

    new-instance v2, Lktp;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lktp;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    invoke-virtual {v1, v2}, Lkts;->c(Lktr;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lktq;->e:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpl-double v6, v0, v2

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v4

    if-lez v6, :cond_0

    sub-double v0, p1, v0

    :try_start_1
    iget-object v2, p0, Lktq;->a:Lkts;

    invoke-virtual {v2, v0, v1}, Lkts;->a(D)V

    iget-object v2, p0, Lktq;->b:Lkts;

    iget-wide v6, p0, Lktq;->f:D

    div-double/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lkts;->a(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v4

    :try_start_2
    iput-wide p1, p0, Lktq;->e:D

    iput-wide p3, p0, Lktq;->f:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
