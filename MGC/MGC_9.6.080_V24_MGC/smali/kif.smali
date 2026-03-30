.class public Lkif;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhx;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/media/MediaFormat;

.field private final c:Lqht;

.field private final d:Lpnu;

.field private e:Lkge;

.field private final f:Lnpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "kif"

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    sput-object v0, Lkif;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Lqht;Lnpr;Lpnu;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkif;->c:Lqht;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkif;->b:Landroid/media/MediaFormat;

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

    :goto_2
    iput-object p4, p0, Lkif;->d:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lkif;->e:Lkge;

    nop

    nop

    goto/32 :goto_1

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput-object p3, p0, Lkif;->f:Lnpr;

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
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const-string v1, "color-format"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    const-string v1, "Could not create image encoder! IOException: %s"

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

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    nop

    :goto_9
    goto/32 :goto_f

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v2, 0x7f000789

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkif;->b:Landroid/media/MediaFormat;

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const-string v0, "ERROR!!!"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lkif;->b:Landroid/media/MediaFormat;

    nop

    nop

    iget-object v1, p0, Lkif;->c:Lqht;

    nop

    nop

    nop

    const-string v2, "mime"

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    nop

    new-instance v3, Lqjw;

    nop

    invoke-direct {v3, v1}, Lqjw;-><init>(Lqht;)V

    new-instance v4, Lkgc;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v0, v1, v3}, Lkgc;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lqht;Lqjw;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lkgh;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v4}, Lkgh;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lkge;)V

    new-instance v0, Lkgg;

    nop

    nop

    nop

    invoke-direct {v0, v2, v1}, Lkgg;-><init>(Lkge;I)V

    new-instance v1, Lkgg;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-direct {v1, v0, v2}, Lkgg;-><init>(Lkge;I)V

    iput-object v1, p0, Lkif;->e:Lkge;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkif;->b:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lqep;Lpcg;)Lkgn;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lkif;->e:Lkge;

    nop

    nop

    nop

    if-nez p2, :cond_0

    nop

    nop

    nop

    invoke-direct {p0}, Lkif;->da190e616797844b591057d0190e7728m()V

    :cond_0
    new-instance p2, Lkgf;

    nop

    iget-object v0, p0, Lkif;->e:Lkge;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lkif;->f:Lnpr;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkif;->d:Lpnu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpnu;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lnpr;->m(Lpog;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lkit;->d:Lgvg;

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v1, Lkit;->c:Lgvg;

    nop

    nop

    nop

    :goto_8
    invoke-direct {p2, v0, p1, v1}, Lkgf;-><init>(Lkge;Lqep;Lgvg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_d
    return-object p2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lkif;->da190e616797844b591057d0190e7728m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lkif;->e:Lkge;

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lkge;->close()V

    :cond_0
    iget-object v0, p0, Lkif;->c:Lqht;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqht;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
