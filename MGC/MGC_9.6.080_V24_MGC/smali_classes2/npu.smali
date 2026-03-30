.class public final Lnpu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/TreeMap;

    nop

    nop

    goto/32 :goto_0

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
    sput-object v0, Lnpu;->a:Ljava/util/TreeMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static declared-synchronized a(J)J
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lnpu;->a:Ljava/util/TreeMap;

    nop

    nop

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

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

    :goto_7
    return-wide p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    throw p0

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

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-class v0, Lnpu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static declared-synchronized b(J)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    goto/32 :goto_5

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

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const-class v0, Lnpu;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lnpu;->a:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    invoke-virtual {v1, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    sget-object p0, Lnpu;->a:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p1

    nop

    const/16 v1, 0x708

    nop

    nop

    if-le p1, v1, :cond_1

    nop

    nop

    invoke-virtual {p0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
