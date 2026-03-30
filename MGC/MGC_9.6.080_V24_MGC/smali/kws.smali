.class public Lkws;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkwq;


# static fields
.field private static final e:Lsdb;


# instance fields
.field public final a:Likv;

.field public final b:Loyn;

.field public final c:Lpcm;

.field public final d:Lrbh;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lrtm;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_13

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "kws"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    sput-object v0, Lkws;->e:Lsdb;

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

    :goto_d
    const/16 v3, 0x2c1

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

    nop

    :goto_e
    aput-object v0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v1, 0x16

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_13
    const v0, 0x1f

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public constructor <init>(Likv;Ljava/util/concurrent/Executor;Loyn;Lrbh;Lpcm;Lrtm;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide v0, p0, Lkws;->h:J

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

    :goto_3
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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

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

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    const-wide/32 v0, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p2, p0, Lkws;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    goto/32 :goto_9

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lkws;->b:Loyn;

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

    :goto_e
    iput-object p4, p0, Lkws;->d:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    iput-object p6, p0, Lkws;->g:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    iput-object p1, p0, Lkws;->a:Likv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    const v0, 0x1

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

    :goto_12
    iput-object p5, p0, Lkws;->c:Lpcm;

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
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    move-object v5, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    :try_start_0
    iget-object v0, p0, Lkws;->g:Lrtm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpro;->e()J

    move-result-wide v1

    nop

    nop

    nop

    iget-wide v3, p0, Lkws;->h:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    int-to-long v5, v0

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v3, v5

    nop

    nop

    cmp-long v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    iput-wide v1, p0, Lkws;->h:J

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    sget-object p0, Lkws;->e:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 p1, 0xc42

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string p1, "Missing activePhysicalCameraId so cannot run GCam side viewfinder processing"

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lkss;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_d
    invoke-static {v0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    move-object v3, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v2 .. v7}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lkws;->f:Ljava/util/concurrent/Executor;

    nop

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

    :goto_14
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
