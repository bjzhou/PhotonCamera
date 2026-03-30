.class public final Lrsj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    sput-object v0, Lrsj;->a:Ljava/util/Map;

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

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lrss;
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x13

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    return-object p0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lrsj;->a:Ljava/util/Map;

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

    nop

    nop

    :goto_5
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    :goto_a
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/Map;

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    new-instance v1, Ljava/util/HashMap;

    nop

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/Enum;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    nop

    nop

    nop

    :cond_1
    sget-object v2, Lrsj;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop

    :goto_11
    check-cast p0, Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_15
    const v1, 0x13

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_6

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
