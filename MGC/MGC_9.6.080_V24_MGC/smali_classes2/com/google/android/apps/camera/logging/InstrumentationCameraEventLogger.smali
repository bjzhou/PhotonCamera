.class public Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljrg;


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;->b:Ljava/util/List;

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

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x64

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;->a:Ljava/lang/Integer;

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

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

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

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getAndClearEvents()Ljava/util/List;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;->b:Ljava/util/List;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    const v1, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v1

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

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


# virtual methods
.method public final a(Lskd;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;->a:Ljava/lang/Integer;

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    const/16 v1, 0x64

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_9
    sget-object p0, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;->b:Ljava/util/List;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop
.end method
