.class public Ljwf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqem;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lsui;

.field public final c:Lsuu;

.field public final d:Lsui;

.field public final e:Lsui;

.field public final f:Lsui;

.field public final g:Z

.field public final h:Z

.field private final i:Lqem;

.field private final j:Landroid/media/MediaFormat;

.field private final k:Ljava/util/List;

.field private final l:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljwf;->a:Lsdb;

    nop

    goto/32 :goto_1

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
    const-string v0, "jwf"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqem;ZLsui;Lsuu;Lsui;Lsui;Lsui;ZLjava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_c

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
    iput-object p1, p0, Ljwf;->i:Lqem;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sget-object p0, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->QbRaLoeMJe:Ljava/lang/String;

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Ljwf;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Ljwf;->f:Lsui;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p2, p0, Ljwf;->h:Z

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

    nop

    nop

    :goto_a
    iput-boolean p8, p0, Ljwf;->g:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, "application/microvideo-image-meta"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_d
    iput-object p4, p0, Ljwf;->c:Lsuu;

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
    if-ne p0, p2, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_f
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p3, p0, Ljwf;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_5

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p6, p0, Ljwf;->e:Lsui;

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

    :goto_14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p2, "mime"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Ljwf;->j:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    new-instance p1, Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p5, p0, Ljwf;->d:Lsui;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p9, p0, Ljwf;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lqep;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-object v2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljwf;->i:Lqem;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqem;->a()Lqep;

    move-result-object v0

    nop

    nop

    new-instance v1, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    iget-object v2, p0, Ljwf;->k:Ljava/util/List;

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljwe;

    nop

    invoke-direct {v2, v0, v1}, Ljwe;-><init>(Lqep;Lsuu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_3

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final b()Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljwf;->i:Lqem;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lqem;->b()Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lqem;->c()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljwf;->i:Lqem;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 5

    goto/32 :goto_1

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

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Ljwf;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v2

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, v0}, Lqep;->a(Lsui;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ljwf;->i:Lqem;

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

    :goto_c
    new-instance v3, Ljwd;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljwf;->i:Lqem;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-interface {v1}, Lqem;->a()Lqep;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Ljwf;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v3, v1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v2, v3}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    new-array v3, v3, [Lsui;

    nop

    nop

    aput-object v2, v3, v0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljwf;->d:Lsui;

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    aput-object v0, v3, v4

    nop

    nop

    nop

    iget-object v0, p0, Ljwf;->e:Lsui;

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    aput-object v0, v3, v4

    nop

    nop

    iget-object v0, p0, Ljwf;->b:Lsui;

    nop

    nop

    const/4 v4, 0x3

    nop

    aput-object v0, v3, v4

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljwf;->f:Lsui;

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    aput-object v0, v3, v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lsgj;->L([Lsui;)Lsui;

    move-result-object v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    iget-object v0, p0, Ljwf;->j:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Lqem;->d()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x19

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1e
    invoke-direct {v3, p0, v2, v1}, Ljwd;-><init>(Ljwf;Lsui;Lqep;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method
