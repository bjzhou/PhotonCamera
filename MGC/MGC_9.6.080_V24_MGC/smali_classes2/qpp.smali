.class public final Lqpp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/io/File;

.field public b:I

.field public c:Z

.field private final d:Ljava/lang/String;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lqpp;->c:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lqpp;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput v0, p0, Lqpp;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lqpp;->a:Ljava/io/File;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lqpp;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lqpp;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b()Ljava/io/File;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ljava/io/File;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    iput-object v2, p0, Lqpp;->e:Ljava/io/File;

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqpp;->a:Ljava/io/File;

    nop

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

    nop

    :goto_6
    const v1, 0x8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const-string v2, "_crash_counter_storage.pb"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    iget-object p0, p0, Lqpp;->e:Ljava/io/File;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_d
    iget-object v0, p0, Lqpp;->e:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_11
    iget-object v1, p0, Lqpp;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final c()Z
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "failed to read counter from disk."

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lqpp;->c:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    nop

    nop

    invoke-virtual {p0}, Lqpp;->b()Ljava/io/File;

    move-result-object v3

    nop

    nop

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v3

    nop

    nop

    sget-object v4, Lqpw;->a:Lqpw;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ltjn;->K(Ljava/io/InputStream;)Ltjn;

    move-result-object v5

    nop

    nop

    invoke-virtual {v4}, Ltkg;->o()Ltkg;

    move-result-object v4

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v6, Ltlz;->a:Ltlz;

    nop

    nop

    invoke-virtual {v6, v4}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v6

    nop

    nop

    invoke-static {v5}, Ltjo;->p(Ltjn;)Ltjo;

    move-result-object v5

    nop

    nop

    invoke-interface {v6, v4, v5, v3}, Ltmf;->l(Ljava/lang/Object;Ltjo;Ltjv;)V

    invoke-interface {v6, v4}, Ltmf;->g(Ljava/lang/Object;)V
    :try_end_2
    .catch Ltky; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ltmn; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v4}, Ltkg;->E(Ltkg;)V

    check-cast v4, Lqpw;

    nop

    nop

    nop

    iget v3, v4, Lqpw;->c:I

    nop

    iput v3, p0, Lqpp;->b:I

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_16

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lqmo;->a:Lsdb;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v3, v1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto :goto_d

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

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

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0x152a

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    :catch_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Lqpp;->b:I

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, p0, Lqpp;->c:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_13

    nop

    nop

    nop

    :catch_2
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    nop

    nop

    nop

    instance-of v4, v4, Ltky;

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ltky;

    nop

    nop

    nop

    nop

    nop

    throw v3

    nop

    :cond_2
    throw v3

    nop

    nop

    nop

    :catch_3
    move-exception v3

    nop

    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    nop

    nop

    nop

    instance-of v4, v4, Ltky;

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    nop

    check-cast v3, Ltky;

    nop

    nop

    nop

    nop

    nop

    throw v3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    new-instance v4, Ltky;

    nop

    nop

    nop

    invoke-direct {v4, v3}, Ltky;-><init>(Ljava/io/IOException;)V

    throw v4

    nop

    nop

    :catch_4
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltmn;->a()Ltky;

    move-result-object v3

    nop

    nop

    nop

    throw v3

    nop

    nop

    :catch_5
    move-exception v3

    nop

    nop

    nop

    nop

    iget-boolean v4, v3, Ltky;->a:Z

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ltky;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Ltky;-><init>(Ljava/io/IOException;)V

    move-object v3, v4

    nop

    nop

    :cond_4
    throw v3

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

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
.end method
