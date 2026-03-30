.class public final Lflk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private volatile a:Lfmu;

.field private final b:Lfdo;


# direct methods
.method public constructor <init>(Lfdo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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

    :goto_2
    iput-object p1, p0, Lflk;->b:Lfdo;

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
.end method


# virtual methods
.method public final a()Lfmu;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x6

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    iget-object v0, p0, Lflk;->a:Lfmu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lflk;->a:Lfmu;

    nop

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    nop

    iget-object v0, p0, Lflk;->b:Lfdo;

    nop

    nop

    nop

    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v1, v0

    nop

    nop

    nop

    check-cast v1, Limz;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Limz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_1
    new-instance v3, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Limz;

    nop

    nop

    nop

    iget-object v0, v0, Limz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_8
    if-nez v3, :cond_2

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_3

    nop

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    :cond_3
    new-instance v2, Lfmw;

    nop

    nop

    invoke-direct {v2, v3}, Lfmw;-><init>(Ljava/io/File;)V

    :cond_4
    :goto_9
    iput-object v2, p0, Lflk;->a:Lfmu;

    nop

    :cond_5
    iget-object v0, p0, Lflk;->a:Lfmu;

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    new-instance v0, Lfmv;

    nop

    nop

    nop

    invoke-direct {v0}, Lfmv;-><init>()V

    iput-object v0, p0, Lflk;->a:Lfmu;

    nop

    nop

    :cond_6
    monitor-exit p0

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-eqz v0, :cond_7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget-object p0, p0, Lflk;->a:Lfmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
