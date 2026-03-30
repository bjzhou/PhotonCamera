.class public final Lpco;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lpco;->b:Ljava/util/Map;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lpco;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    sput-object v0, Lpco;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 9

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v7, p1, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p1, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v5, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->yHpaXfZonfjD:Ljava/lang/String;

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
    const-string p1, "Failed to resolve \"%s\" for \"%s\". Did you forget to include the .so or register it with %s.register(%s.class, %s)? \n%s"

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

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v8

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

    :goto_12
    const-string v4, "couldn\'t find \""

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    throw v1

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-static {v3, v4, v5}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_1a
    const-string v0, "JniLoader was null for "

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

    :goto_1b
    goto/32 :goto_7

    nop

    :goto_1c
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lpco;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    const/4 v2, 0x0

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lpco;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lpcn;

    nop

    goto :goto_1d

    nop

    nop

    :cond_1
    if-eqz p1, :cond_3

    nop

    sget-object v1, Lpco;->b:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lpcn;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    new-instance v3, Lpcn;

    nop

    invoke-direct {v3, p1}, Lpcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object p1, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    :cond_3
    move-object p1, v2

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    const-string v5, "\""

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lpco;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p1

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

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Ljava/lang/String;

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

    :goto_2c
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lpcn;->b()V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    :goto_2e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
