.class public Livx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Livv;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Livz;

.field public final c:Livw;

.field public final d:Livl;

.field public e:Livy;

.field public f:Z

.field public g:Z

.field public h:Livu;

.field public i:Lcom/google/android/libraries/vision/opengl/Texture;

.field public j:D

.field public k:I

.field public l:Litp;

.field private final m:[F

.field private final n:[F

.field private final o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    sput-object v0, Livx;->a:Lsdb;

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

    :goto_1
    const-string v0, "ivx"

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
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, p0, Livx;->o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v3, p0, Livx;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Livw;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    iput-boolean v3, p0, Livx;->g:Z

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

    :goto_7
    iput v3, p0, Livx;->k:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v2, p0, Livx;->m:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    const-class v2, Livm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v2, p0, Livx;->h:Livu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Livm;->a()Livl;

    move-result-object v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, p0, Livx;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    check-cast v2, Livm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v1, p0, Livx;->b:Livz;

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

    :goto_13
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

    :goto_14
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v2, p0, Livx;->d:Livl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Livx;->c:Livw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    iput-object v2, p0, Livx;->n:[F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    new-instance v0, Livw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_1

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    invoke-static {v2}, Liwa;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2}, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_22
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v1, Livz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1}, Livz;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v2, p0, Livx;->l:Litp;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    :goto_28
    iput-wide v4, p0, Livx;->j:D

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

    nop

    :goto_29
    iput-object v2, p0, Livx;->e:Livy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a([FJ)V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iput-wide v0, p0, Livx;->j:D

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Livx;->d:Livl;

    nop

    nop

    iget-object v1, p0, Livx;->m:[F

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Livx;->n:[F

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Livl;->trackTexture([F[F)Z

    iget-object v0, p0, Livx;->d:Livl;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Livx;->o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    nop

    invoke-interface {v0, v1}, Livl;->getTrackerStats(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V

    iget-object v0, p0, Livx;->b:Livz;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Livx;->o:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Livz;->a(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V

    iget-object v0, p0, Livx;->c:Livw;

    nop

    nop

    invoke-virtual {v0, p1, p2, p3}, Livw;->a([FJ)V
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
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Livx;->f:Z

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Livx;->g:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto/16 :goto_11

    nop

    :cond_1
    iget-object v0, p0, Livx;->e:Livy;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Livx;->n:[F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Livy;->e([F)V

    iget-object v0, p0, Livx;->e:Livy;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Livy;->a()D

    move-result-wide v0

    nop

    nop

    nop

    iget-wide v2, p0, Livx;->j:D

    nop

    nop

    nop

    sub-double v2, v0, v2

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    nop

    nop

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    nop

    cmpg-double v2, v2, v4

    nop

    nop

    nop

    nop

    if-gez v2, :cond_0

    nop

    nop

    iget p1, p0, Livx;->k:I

    nop

    nop

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    iput p1, p0, Livx;->k:I

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

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

    :goto_9
    goto/32 :goto_2

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    monitor-exit p0

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final b(II)V
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

.method public final c(Lcom/google/android/libraries/vision/opengl/Texture;Livu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Livx;->c:Livw;

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
    iput-object p2, p0, Livx;->h:Livu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p2, Livu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p1, p0, Livx;->i:Lcom/google/android/libraries/vision/opengl/Texture;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p2, Livu;->d:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2}, Livw;->c(Lcom/google/android/libraries/vision/opengl/Texture;Livu;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

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
    iget-object p0, p0, Livx;->d:Livl;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    invoke-interface {p0}, Livl;->release()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Livx;->f:Z

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Livx;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Livx;->c:Livw;

    nop

    nop

    nop

    invoke-virtual {v0}, Livw;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

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

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :cond_1
    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final e(Litp;)V
    .locals 0

    goto/32 :goto_3

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

    :goto_1
    iget-object p0, p0, Livx;->c:Livw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Livw;->g:Litp;

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
    iput-object p1, p0, Livx;->l:Litp;

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
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    const v0, 0x16e3600

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Livx;->c:Livw;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Livw;->f:I

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
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v1, Livw;->b:Liwq;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    :goto_6
    iget-object v1, p0, Livx;->d:Livl;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, v2, Liwk;->k:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v3, Liwq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Livw;->g:Litp;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v1, Livw;->b:Liwq;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

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

    :goto_e
    const/4 v4, 0x2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Recorded video stream is out-of-sync with tracking\n%d frames recorded with %d packets dropped, but %d frames tracked"

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, p0, v4, v5}, Litt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    :goto_12
    iput-boolean v0, v2, Liwq;->f:Z

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Liwq;->a()I

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v3, Litt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, v2, Liwq;->e:Liwp;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_1a
    iget-object v1, p0, Livx;->l:Litp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x6

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

    :goto_1c
    if-gtz v2, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0, v1, v0, v2, p1}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v4}, Liwp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_3

    nop

    :goto_23
    goto/32 :goto_41

    nop

    nop

    :goto_24
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, v4}, Liwp;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Livx;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    monitor-exit p0

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

    :cond_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Livx;->f:Z

    nop

    nop

    iput-boolean v0, p0, Livx;->g:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    :goto_28
    goto/16 :goto_4f

    nop

    :goto_29
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v5, v1, Livw;->b:Liwq;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v0, p1, :cond_4

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    const-string v3, "ImaxCaptureModule"

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v3, v1, v4, v5}, Litt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1, p1}, Livl;->stopCapture(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    iget-object v1, p0, Livx;->c:Livw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_30
    iget-object v2, v1, Livw;->d:Livs;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v1, Livw;->b:Liwq;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_33
    const/16 v1, 0x7a7

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v4, "%s"

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

    :goto_35
    invoke-virtual {v3, v4}, Liwp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_36
    check-cast p0, Lscz;

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

    :goto_37
    invoke-interface {p0, v1, v3}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_38
    invoke-static {v4, v5, v6, v3, v2}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_39
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_3b
    if-nez v2, :cond_5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v5, v1, Livw;->d:Livs;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, v2, Liwq;->c:Liwk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_41
    iget p0, p0, Livx;->k:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v3}, Litp;->a(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_43
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v3}, Litp;->a(Ljava/lang/Runnable;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_47
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_39

    nop

    :catch_0
    move-exception v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_49
    const/16 v6, 0x7d1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v3, Litt;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_4b
    iget-object v3, v2, Liwq;->e:Liwp;

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

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move v2, v0

    nop

    nop

    :goto_4f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_50
    sget-object p0, Livx;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3, v4}, Liwp;->sendMessage(Landroid/os/Message;)Z

    :try_start_2
    iget-object v2, v2, Liwq;->d:Landroid/os/Looper;

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2}, Livs;->a()V

    :goto_54
    goto/32 :goto_a

    nop

    nop
.end method
