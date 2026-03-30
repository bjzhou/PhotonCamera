.class public final Lqyc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lrtm;

.field public final e:Lrtm;

.field public final f:Lrtm;

.field public final g:Lrtm;

.field public final h:Lrtm;

.field public final i:Landroid/net/Uri;

.field public volatile j:Lqwq;

.field public final k:Landroid/net/Uri;

.field public volatile l:Lqws;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lqyc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    sput-object v0, Lqyc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lrtm;Lrtm;Lrtm;)V
    .locals 1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3}, Lqzr;->a()Landroid/net/Uri;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-virtual {p3, p4}, Lqzr;->d(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqyc;->k:Landroid/net/Uri;

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

    :goto_3
    iput-object p4, p0, Lqyc;->d:Lrtm;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqyc;->g:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p3, 0xe

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

    :goto_6
    iput-object p2, p0, Lqyc;->e:Lrtm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p3, p1}, Lqzr;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const-string p4, "phenotype_storage_info"

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

    :goto_9
    sget p1, Lpvb;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {p3, p4}, Lqzr;->d(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p0, p3}, Lqpd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "storage-info.pb"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3, v0}, Lqzr;->e(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lqyc;->h:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Lqzr;->c()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3, p1}, Lqzr;->e(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "device-encrypted-storage-info.pb"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p3, Lqzr;

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

    :goto_13
    iput-object p3, p0, Lqyc;->f:Lrtm;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Lqyc;->i:Landroid/net/Uri;

    nop

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

    :goto_15
    new-instance p1, Lqpd;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    const/16 p3, 0xf

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p3, p1}, Lqzr;-><init>(Landroid/content/Context;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lqyc;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    invoke-direct {p1, p2, p3}, Lqpd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    new-instance p3, Lqzr;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p3}, Lqzr;->a()Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    new-instance p1, Lqpd;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lqwq;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqyc;->j:Lqwq;

    nop

    if-nez v0, :cond_2

    nop

    sget-object v0, Lqwq;->b:Lqwq;

    nop

    nop

    invoke-static {v0}, Lrar;->b(Ltlq;)Lrar;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    nop

    nop

    nop

    nop

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    nop

    nop

    nop

    invoke-direct {v4, v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lqyc;->f:Lrtm;

    nop

    invoke-interface {v4}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lqyc;->i:Landroid/net/Uri;

    nop

    invoke-virtual {v4, v5, v2}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lqwq;

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_4
    iput-object v0, p0, Lqyc;->j:Lqwq;

    nop

    :cond_2
    monitor-exit v1

    nop

    goto :goto_d

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqyc;->j:Lqwq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lqyc;->a:Ljava/lang/Object;

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

.method public final b()Lqws;
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

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
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

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

    :goto_5
    sget-object v1, Lqyc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lqyc;->l:Lqws;

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

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqyc;->l:Lqws;

    nop

    if-nez v0, :cond_2

    nop

    nop

    sget-object v0, Lqws;->b:Lqws;

    nop

    invoke-static {v0}, Lrar;->b(Ltlq;)Lrar;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lqyc;->f:Lrtm;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lhdn;

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lqyc;->k:Landroid/net/Uri;

    nop

    invoke-virtual {v4, v5, v2}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lqws;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    nop

    nop

    :catch_0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_f
    iput-object v0, p0, Lqyc;->l:Lqws;

    nop

    nop

    :cond_2
    monitor-exit v1

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x10

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
.end method
