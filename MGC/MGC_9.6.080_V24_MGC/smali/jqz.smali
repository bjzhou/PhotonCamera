.class public Ljqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljrg;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Ljava/io/FileOutputStream;

.field private final c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Ljqz;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v0, "jqz"

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

    :goto_2
    return-void

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    new-instance p1, Ljava/io/File;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0xa08

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ljqz;->c:Ljava/io/File;

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

    :goto_8
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lshf;->g(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileOutputStream;

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_c
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "camera_events"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Ljqz;->a:Lsdb;

    nop

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

    :goto_10
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_3

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

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    const-string v1, "session.pb"

    nop

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

    :goto_1a
    const v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Ljqz;->b:Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    const-string v1, "Failed to create logging file!"

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lskd;)V
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    :try_start_0
    monitor-enter p0

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Ljqz;->b:Ljava/io/FileOutputStream;

    nop

    nop

    if-eqz v0, :cond_8

    nop

    const/4 v1, 0x5

    nop

    nop

    invoke-virtual {p1, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ltkb;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ltkb;->r(Ltkg;)V

    sget-object p1, Lsll;->a:Lsll;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_0
    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Lsll;

    nop

    iget v5, v4, Lsll;->b:I

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    or-int/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    iput v5, v4, Lsll;->b:I

    nop

    nop

    iput-wide v2, v4, Lsll;->c:J

    nop

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_1
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v2, Lskd;

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lsll;

    nop

    nop

    sget-object v3, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Lskd;->X:Lsll;

    nop

    nop

    nop

    nop

    iget p1, v2, Lskd;->c:I

    nop

    nop

    nop

    nop

    const/high16 v3, 0x8000000

    nop

    nop

    nop

    nop

    nop

    or-int/2addr p1, v3

    nop

    nop

    nop

    nop

    nop

    iput p1, v2, Lskd;->c:I

    nop

    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    check-cast p1, Lskd;

    nop

    invoke-virtual {p1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Ltkg;->k(Ltmf;)I

    move-result v1

    nop

    nop

    if-ltz v1, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v0, "serialized size must be non-negative, was "

    nop

    invoke-static {v1, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget v1, p1, Ltkg;->aV:I

    nop

    nop

    const v3, 0x7fffffff

    nop

    nop

    nop

    nop

    and-int/2addr v1, v3

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Ltkg;->k(Ltmf;)I

    move-result v1

    nop

    nop

    if-ltz v1, :cond_4

    nop

    iget v3, p1, Ltkg;->aV:I

    nop

    nop

    nop

    nop

    const/high16 v4, -0x80000000

    nop

    nop

    nop

    nop

    and-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v3, v1

    nop

    nop

    nop

    iput v3, p1, Ltkg;->aV:I

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "serialized size must be non-negative, was "

    nop

    invoke-static {v1, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_2
    invoke-static {v1}, Ltjs;->ab(I)I

    move-result v3

    nop

    nop

    nop

    add-int/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ltjs;->S(I)I

    move-result v3

    nop

    new-instance v4, Ltjp;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v3}, Ltjp;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v4, v1}, Ltjs;->C(I)V

    invoke-virtual {p1, v4}, Ltis;->dd(Ltjs;)V

    invoke-virtual {v4}, Ltjs;->i()V

    iget-object p1, p0, Ljqz;->b:Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    :goto_5
    if-nez p1, :cond_7

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

    :cond_7
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    iput-object v2, p0, Ljqz;->b:Ljava/io/FileOutputStream;

    nop

    new-instance p1, Ljava/io/FileOutputStream;

    nop

    nop

    iget-object v0, p0, Ljqz;->c:Ljava/io/File;

    nop

    invoke-direct {p1, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object p1, p0, Ljqz;->b:Ljava/io/FileOutputStream;

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_6
    sget-object p1, Ljqz;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const-string v0, "Failed to log an event!"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0xa0c

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
    goto :goto_f

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    sget-object v0, Ljqz;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "Failed to re-open logging file!"

    nop

    const/16 v2, 0xa0b

    nop

    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_8
    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xf

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
