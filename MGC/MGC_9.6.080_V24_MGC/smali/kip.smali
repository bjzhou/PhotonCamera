.class public Lkip;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhx;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final b:Lkhx;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lkip;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const-string v0, "kip"

    nop

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

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v3, 0xad

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x17

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_12
    aput-object v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lkhx;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lkip;->c:I

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
    iput-object p1, p0, Lkip;->b:Lkhx;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkip;->b:Lkhx;

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
    invoke-interface {p0}, Lkhx;->a()Landroid/media/MediaFormat;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public final declared-synchronized b(Lqep;Lpcg;)Lkgn;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lkip;->c:I

    nop

    nop

    nop

    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    iput v0, p0, Lkip;->c:I

    nop

    new-instance v0, Lkio;

    nop

    iget-object v1, p0, Lkip;->b:Lkhx;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1, p2}, Lkhx;->b(Lqep;Lpcg;)Lkgn;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p2}, Lkio;-><init>(Lkip;Lkgn;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    :goto_4
    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

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

    :goto_8
    goto :goto_4

    nop

    nop

    :catch_0
    move-exception p2

    nop

    nop

    :try_start_2
    sget-object v0, Lkip;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    const-string v1, "Cannot create MomentsTrackEncoder! Moments will be disabled!"

    nop

    const/16 v2, 0xba7

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0, p2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_9
    invoke-interface {p1}, Lqep;->close()V

    new-instance p1, Lkin;

    nop

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2}, Lkin;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_9

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

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

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    sget-object p2, Lkip;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    const/16 v0, 0xba6

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

    nop

    nop

    nop

    const-string v0, "Attempting to launch already-closed MomentsTrackEncoder!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget v0, p0, Lkip;->c:I

    nop

    nop

    nop

    if-lez v0, :cond_1

    nop

    iget-object v0, p0, Lkip;->b:Lkhx;

    nop

    nop

    nop

    invoke-interface {v0}, Lkhx;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_5

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_1
    sget-object v1, Lkip;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v2, "Failed to prewarm MomentsTrackEncoder! Will instantiate during snapshot."

    nop

    nop

    nop

    const/16 v3, 0xba8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

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
    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

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

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x20

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

    :goto_a
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_7

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catchall_0
    move-exception v0

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
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Lkip;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_0

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

    :try_start_0
    iget v0, p0, Lkip;->c:I

    nop

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    iput v0, p0, Lkip;->c:I

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkip;->b:Lkhx;

    nop

    nop

    nop

    invoke-interface {v0}, Lkhx;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    goto/32 :goto_4

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop
.end method
