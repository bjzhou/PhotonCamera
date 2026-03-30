.class public Lgdr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgcy;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Lqka;

.field private c:J

.field private final d:Lqjs;

.field private final e:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lgdr;->a:Lsdb;

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

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

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

    :goto_3
    const-string v0, "gdr"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lgdg;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p2, 0x7f13007c

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide v0, p0, Lgdr;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lgdq;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lgdr;->d:Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    invoke-virtual {p1, p2, v0}, Liof;->F(II)Lqjs;

    move-result-object p1

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v0, 0x7f13007b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lgdr;->e:Liof;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Liof;

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

    :goto_12
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Lgdq;-><init>(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_17

    nop

    nop

    :goto_15
    invoke-virtual {p2, p1}, Lgdg;->a(Lqht;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    iput-object v0, p0, Lgdr;->b:Lqka;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/Frame;Ltas;[FLqiu;Lqjs;)V
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p4}, Liof;->D([Lqka;)Lqjy;

    move-result-object p1

    nop

    nop

    nop

    :try_start_0
    invoke-static {v0, p1}, Lqio;->m(ILqjy;)Lqxk;

    move-result-object p2

    nop

    nop

    iget-object p0, p0, Lgdr;->d:Lqjs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p0}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p5}, Lqjs;->i()Lqhe;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lqhf;

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lqfe;->b()I

    move-result p2

    nop

    nop

    invoke-virtual {p5}, Lqjs;->i()Lqhe;

    move-result-object p4

    nop

    nop

    check-cast p4, Lqhf;

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p4, Lqhe;->a:Lqfd;

    nop

    invoke-virtual {p4}, Lqfe;->a()I

    move-result p4

    nop

    invoke-virtual {p0, v0, v0, p2, p4}, Lqio;->j(IIII)V

    const-string v2, "u_Color"

    nop

    nop

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Lqio;->i(Ljava/lang/String;FFFF)V

    const-string p2, "u_PointSize"

    nop

    const/high16 p4, 0x40a00000    # 5.0f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, p4}, Lqio;->e(Ljava/lang/String;F)V

    const-string p2, "u_ModelViewProjection"

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    check-cast p3, [F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, p3}, Lqio;->f(Ljava/lang/String;[F)V

    const-string p2, "a_Position"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, v0}, Lqio;->b(Ljava/lang/String;I)V

    invoke-virtual {p0, p5}, Lqio;->n(Lqjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_f

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    const-string p4, "Too slow, not updating point cloud data."

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_16

    nop

    nop

    :catchall_0
    move-exception p1

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

    nop

    nop

    :goto_6
    sget-object p2, Lgdr;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-object p2, p0, Lgdr;->e:Liof;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    :try_start_2
    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->acquirePointCloud()Lcom/google/ar/core/PointCloud;

    move-result-object p1

    nop

    nop
    :try_end_2
    .catch Lcom/google/ar/core/exceptions/ResourceExhaustedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/ar/core/exceptions/DeadlineExceededException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result p2

    nop

    nop

    nop

    nop

    const/4 p4, 0x4

    nop

    if-lt p2, p4, :cond_5

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getTimestamp()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lgdr;->c:J

    nop

    nop

    nop

    cmp-long p2, v0, v2

    nop

    if-gtz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1d

    nop

    nop

    :cond_1
    new-instance p2, Lgdq;

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object p4

    nop

    nop

    nop

    invoke-direct {p2, p4}, Lgdq;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object p2, p0, Lgdr;->b:Lqka;

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getTimestamp()J

    move-result-wide v0

    nop

    nop

    nop

    iput-wide v0, p0, Lgdr;->c:J

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    :goto_b
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    :goto_c
    :try_start_4
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->close()V
    :try_end_4
    .catch Lcom/google/ar/core/exceptions/ResourceExhaustedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/ar/core/exceptions/DeadlineExceededException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_1c

    nop

    nop

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

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    if-eqz p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lqjy;->close()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0xf3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lgdr;->b:Lqka;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    new-array p4, p4, [Lqka;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    aput-object p1, p4, v0

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

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_8

    nop

    :goto_1c
    goto :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1d
    :try_start_5
    sget-object p2, Lgdr;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    const/16 p4, 0xf2

    nop

    invoke-interface {p2, p4}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    const-string p4, "Missing point cloud data, not updating point cloud data."

    nop

    nop

    nop

    invoke-interface {p2, p4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    invoke-static {p4, v0, p2, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x16

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_6
    invoke-virtual {p1}, Lqjy;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    iget p2, p1, Lqka;->c:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    goto :goto_25

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p2

    nop

    nop
    :try_end_7
    .catch Lcom/google/ar/core/exceptions/ResourceExhaustedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/ar/core/exceptions/DeadlineExceededException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p4, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop
.end method
