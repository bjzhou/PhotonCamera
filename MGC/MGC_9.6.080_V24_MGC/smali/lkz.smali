.class public Llkz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashMap;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sput-object v0, Llkz;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "lkz"

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Llkz;->b:Ljava/util/HashMap;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Llkz;->c:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Llkz;->d:Landroid/content/Context;

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Lcom/google/googlex/gcam/PortraitRequest;)Z
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PortraitRequest;->b()Lcom/google/googlex/gcam/StringStaticMetadataMap;

    move-result-object p0

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

    nop

    nop

    :goto_2
    const v1, 0x1c

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_7
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraPrimary_get()Ljava/lang/String;

    move-result-object v0

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

    :goto_8
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

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

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v2, v3, p0}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    iget-wide v2, p0, Lcom/google/googlex/gcam/StringStaticMetadataMap;->a:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lsyi;->d:Lsyi;

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

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3, p0, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StringStaticMetadataMap_get(JLcom/google/googlex/gcam/StringStaticMetadataMap;Ljava/lang/String;)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lcom/google/googlex/gcam/StaticMetadata;

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Llkx;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-object v2

    nop

    :cond_0
    :try_start_0
    sget-object p1, Llkz;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v0, 0xf12

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string v0, "Unable to find asset file"

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    sget-object p1, Llkx;->a:Llkx;

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

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

    :goto_6
    return-object p1

    nop

    nop

    nop

    :cond_2
    :try_start_2
    new-instance v0, Llky;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llkz;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Llky;-><init>(Landroid/content/res/AssetFileDescriptor;I)V

    iget-object v1, p0, Llkz;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lown;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lown;-><init>(Lpci;)V

    iget-object v2, p0, Llkz;->c:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Llkx;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llky;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lown;->a()Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1, v0, v1}, Llkx;-><init>(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Lpci;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-object v2

    nop

    :catch_0
    move-exception p1

    nop

    sget-object v0, Llkz;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    const/16 v0, 0xf11

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Unable to open asset file"

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    sget-object p1, Llkx;->a:Llkx;

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-object p1

    nop

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

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_4
    iget-object v0, p0, Llkz;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lown;

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-virtual {v0}, Lown;->a()Lpci;

    move-result-object v0

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llkz;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Llky;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Llkx;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Llky;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    invoke-direct {v2, p1, v1, v0}, Llkx;-><init>(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Lpci;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_6
    invoke-static {p1}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    sget-object p1, Llkx;->a:Llkx;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
