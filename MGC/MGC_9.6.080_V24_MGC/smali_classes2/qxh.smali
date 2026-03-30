.class public final Lqxh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentMap;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lrbh;

.field private static final d:Lqop;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lqwx;->a:Lqwx;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_6
    new-instance v0, Lqop;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lqop;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

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

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    sput-object v0, Lqxh;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lqxh;->c:Lrbh;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

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

    :goto_13
    sput-object v0, Lqxh;->a:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lqxh;->d:Lqop;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v4, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    return v1

    nop

    :goto_2
    goto/32 :goto_c

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

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

    :goto_5
    array-length v5, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget-object v5, v0, v3

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_a
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    return v2

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

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

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    move v4, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    move v4, v2

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    if-lt v3, v5, :cond_5

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

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v5}, Lqxh;->a(Ljava/io/File;)Z

    move-result v4

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

    :goto_22
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v4, :cond_7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_7
    :goto_25
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Lqvl;)Lrbs;
    .locals 9

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lqxh;->d:Lqop;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xc

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

    :goto_3
    new-instance v2, Lqzr;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, v1, Lrbf;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqvl;->d:Landroid/content/Context;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Lrbf;->e(Landroid/net/Uri;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    invoke-virtual {v2, v0}, Lqzr;->d(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Lqzr;->a()Landroid/net/Uri;

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

    nop

    :goto_c
    invoke-virtual {v1, v0}, Lrbh;->a(Lrbg;)Lrbs;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    sget-object v1, Lqxh;->c:Lrbh;

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

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const-string v0, "phenotype"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Lrbf;->d(Ltlq;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    monitor-enter v2

    nop

    :try_start_0
    sget-object v1, Lqxh;->c:Lrbh;

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    sget-object v6, Lrbv;->a:Lrbv;

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lqvl;->b()Lsul;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lqvl;->e()Lhdn;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lrbo;->a:Lrbt;

    nop

    nop

    nop

    invoke-static {p0, v7}, Lqrg;->c(Lrbt;Ljava/util/HashMap;)V

    new-instance p0, Lrbh;

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v3 .. v8}, Lrbh;-><init>(Ljava/util/concurrent/Executor;Lhdn;Lrbv;Ljava/util/Map;Lrbx;)V

    sput-object p0, Lqxh;->c:Lrbh;

    nop

    move-object v1, p0

    nop

    :cond_1
    monitor-exit v2

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Lrbf;->c()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "all_accounts.pb"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, v0}, Lqzr;-><init>(Landroid/content/Context;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    sget-object v2, Lqxh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Lrbg;->a()Lrbf;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Lrbf;->a()Lrbg;

    move-result-object v0

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

    :goto_20
    invoke-virtual {v2, v0}, Lqzr;->e(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    sget-object v0, Lqwx;->a:Lqwx;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method
