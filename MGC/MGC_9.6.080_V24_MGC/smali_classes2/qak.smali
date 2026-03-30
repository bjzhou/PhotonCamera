.class public final Lqak;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpzj;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private final c:Lpxo;

.field private final d:Lrss;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpxo;Lrss;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lqak;->c:Lpxo;

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

    :goto_2
    iput-object p3, p0, Lqak;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lqak;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lqak;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpwn;)Lsui;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v2, 0x3e8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-long/2addr v0, v2

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

    :goto_4
    const v1, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-static {}, Lpuq;->S()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lqak;->m(Ljava/util/List;)Lsui;

    move-result-object p0

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

    :goto_c
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    :goto_11
    add-long/2addr v0, v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v2, p1, Lpwn;->k:J

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

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_14
    invoke-static {p1, v0, v1}, Lpuq;->aD(Lpwn;J)Lpwn;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "gms_icing_mdd_groups"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    const v1, 0x6

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

    :goto_9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, v2}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lqak;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lqak;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const-string v1, "gms_icing_mdd_group_key_properties"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xb

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1, v2}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lqak;->k()Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lsui;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    new-instance v1, Lpzq;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqak;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lqak;->d()Lsui;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, v2}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lsui;
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v4, Ljava/lang/String;

    nop

    :try_start_0
    invoke-static {v4}, Lpuq;->ax(Ljava/lang/String;)Lpww;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lqcp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_27

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v5, p0, Lqak;->c:Lpxo;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Lqak;->d:Lrss;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_a
    const-string v7, "Failed to deserialize groupKey:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v2, v3}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v1

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

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    invoke-interface {v5}, Lpxo;->a()V

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

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

    nop

    :goto_13
    const v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v5, v6}, Lqbq;->j(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lqak;->b:Landroid/content/Context;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    :goto_1d
    const-string v2, "gms_icing_mdd_groups"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1e

    nop

    nop

    :goto_27
    goto/16 :goto_e

    nop

    nop

    :catch_0
    move-exception v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lsui;
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "%s: IOException occurred while reading file groups."

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, p0}, Lpuq;->ay(Landroid/content/Context;Lrss;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    nop

    nop

    nop

    long-to-int p0, v2

    nop

    nop

    nop

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const-class v2, Lpwn;

    nop

    nop

    sget-object v3, Lpwn;->a:Lpwn;

    nop

    nop

    nop

    const/4 v4, 0x7

    nop

    invoke-virtual {v3, v4}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ltlx;

    nop

    nop

    nop

    nop

    invoke-static {p0, v2, v3}, Lpuq;->au(Ljava/nio/ByteBuffer;Ljava/lang/Class;Ltlx;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1a

    nop

    :catch_0
    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    sget p0, Lryb;->d:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqak;->d:Lrss;

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

    :goto_a
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    sget p0, Lqbq;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "%s: Exception while reading from stale groups into buffer."

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, v1, v0}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lsbh;->a:Lryb;

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    const v1, 0x16

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v2, v0}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_1f
    const-string v0, "FileGroupsMetadataUtil"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget p0, Lryb;->d:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget p0, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lqak;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final f()Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final g(Lpww;)Lsui;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

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

    :goto_4
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    const-string v1, "gms_icing_mdd_groups"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    sget-object v0, Lpwn;->a:Lpwn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    iget-object p0, p0, Lqak;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Lpuq;->az(Lpww;)Ljava/lang/String;

    move-result-object p1

    nop

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

    nop

    :goto_e
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

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

    :goto_f
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ltlx;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-static {p0, p1, v0}, Lpuq;->ah(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lpwn;

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

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final h(Lpww;)Lsui;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "gms_icing_mdd_group_key_properties"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Ltlx;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1, p0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    const v0, 0x13

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lpwx;->a:Lpwx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    iget-object p0, p0, Lqak;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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

    :goto_10
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-static {p1}, Lpuq;->az(Lpww;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-static {p0, p1, v0}, Lpuq;->ah(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lpwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final i(Lpww;)Lsui;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1, p0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqak;->d:Lrss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const-string v1, "gms_icing_mdd_groups"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lpuq;->az(Lpww;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Lpuq;->am(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final j(Ljava/util/List;)Lsui;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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
    invoke-static {v0, v1, p0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p0

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

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_7
    const-string v1, "gms_icing_mdd_groups"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iget-object v1, v0, Lpww;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    sget v1, Lqbq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqak;->d:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_19

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lpuq;->aj(Ltlq;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lpww;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    check-cast v0, Lpww;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Lsui;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lsue;->a:Lsui;

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

    :goto_3
    invoke-virtual {p0}, Lqak;->n()Ljava/io/File;

    move-result-object p0

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
.end method

.method public final l(Lpww;Lpwn;)Lsui;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_6
    const-string v1, "gms_icing_mdd_groups"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1, p2}, Lpuq;->an(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlq;)Z

    move-result p0

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

    :goto_8
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-static {p1}, Lpuq;->az(Lpww;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lqak;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_11
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final m(Ljava/util/List;)Lsui;
    .locals 3

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lqbq;->c(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const-string p0, "IOException occurred while writing file groups."

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lqak;->n()Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const-string p1, "File %s not found while writing."

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

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

    :goto_e
    return-object p0

    nop

    nop

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Lpuq;->at(Ljava/lang/Iterable;)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    nop

    nop

    invoke-static {p1}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xd

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_16
    invoke-static {p1, p0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final n()Ljava/io/File;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqak;->b:Landroid/content/Context;

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

    :goto_1
    invoke-static {v0, p0}, Lpuq;->ay(Landroid/content/Context;Lrss;)Ljava/io/File;

    move-result-object p0

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

    :goto_2
    iget-object p0, p0, Lqak;->d:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method
