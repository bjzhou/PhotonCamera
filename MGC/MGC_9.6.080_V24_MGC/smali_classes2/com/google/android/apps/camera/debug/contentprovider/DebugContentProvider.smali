.class public Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;
.super Landroid/content/ContentProvider;
.source "PG"


# static fields
.field private static final c:Lsdb;


# instance fields
.field public a:Lhoa;

.field public b:Lhoh;

.field private d:Lhqe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

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

    :goto_1
    const-string v0, "com.google.android.apps.camera.debug.contentprovider.DebugContentProvider"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
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

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static final a(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/android/apps/camera/stats/Instrumentation;->instance()Lcom/google/android/apps/camera/stats/Instrumentation;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x461

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/stats/Instrumentation;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_3
    sget-object p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const-string p1, "Could not get an instance of the instrumentation."

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

    :goto_a
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

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

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    nop

    nop

    :goto_10
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

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

    :goto_13
    check-cast p0, Lscz;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_c

    nop

    nop

    :goto_15
    check-cast p0, Ljava/util/List;

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
.end method

.method private final declared-synchronized f875135777c17da3cef2ea6eeff5be29m()Lhqe;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

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

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :goto_4
    throw v0

    nop

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
    const v1, 0x13

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

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->d:Lhqe;

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lhqe;

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    const-string v2, ".DebugContentProvider"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lhqe;-><init>(Ljava/lang/String;)V

    new-instance v1, Lhpx;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lhpx;-><init>(I)V

    const-string v2, "startup_timing_latest"

    nop

    nop

    nop

    nop

    nop

    const-class v3, Lmkd;

    nop

    invoke-virtual {v0, v2, v3, v1}, Lhqe;->b(Ljava/lang/String;Ljava/lang/Class;Lhqd;)V

    new-instance v1, Lhpx;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lhpx;-><init>(I)V

    const-string v2, "shutter_lag_latest"

    nop

    nop

    nop

    const-class v3, Lmkm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v1}, Lhqe;->b(Ljava/lang/String;Ljava/lang/Class;Lhqd;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->d:Lhqe;

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->d:Lhqe;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string p1, "Delete not supported for DebugContentProvider."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x45d

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
    check-cast p0, Lscz;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    sget-object p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

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

    :goto_9
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    nop

    nop

    :cond_0
    iget-object v0, v0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->b:Lhoh;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v1, p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_18

    nop

    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    sget-object v2, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->FIQhyHeolvRqWjb:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    const v1, 0x16

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

    :goto_b
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

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

    :goto_d
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

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

    :goto_f
    return-void

    nop

    nop

    :catch_0
    move-exception v0

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

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, v0

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_14
    const-string v4, "run"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    const-string v5, "_id"

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v6, v0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->a:Lhoa;

    nop

    nop

    nop

    nop

    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Liye;

    nop

    const-class v7, Lhpy;

    nop

    nop

    nop

    invoke-interface {v6, v7}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v6

    nop

    nop

    check-cast v6, Lhpy;

    nop

    invoke-interface {v6, v0}, Lhpy;->c(Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;)V

    :cond_4
    const-string v6, "Build flavor: %s"

    nop

    nop

    iget-object v7, v0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->a:Lhoa;

    nop

    nop

    nop

    invoke-virtual {v7}, Lhoa;->name()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->f875135777c17da3cef2ea6eeff5be29m()Lhqe;

    move-result-object v6

    nop

    nop

    nop

    nop

    const-string v7, "%s,%s,%s,%s,%s"

    nop

    nop

    nop

    nop

    nop

    const-string v8, "path"

    nop

    nop

    nop

    filled-new-array {v8, v5, v4, v3, v2}, [Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    iget-object v7, v6, Lhqe;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_0

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Ljava/util/Map$Entry;

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    nop

    check-cast v9, Lhqd;

    nop

    sget-object v10, Lhqe;->b:Lhqc;

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    invoke-virtual {v6, v9, v11, v10}, Lhqe;->a(Lhqd;ZLhqc;)Landroid/database/Cursor;

    move-result-object v9

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_18
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_2

    nop

    nop

    nop

    nop

    nop

    const-string v10, "%s,%d,%d,%s,%d"

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    nop

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    nop

    nop

    nop

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    nop

    nop

    nop

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    nop

    nop

    nop

    filled-new-array {v11, v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    const/16 v3, 0x462

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

    :goto_1a
    const-string v2, "time_ns"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_1c
    move-object/from16 v0, p0

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

    :goto_1d
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_1e
    const-string v3, "name"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const/4 p0, 0x0

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

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const-string p1, "Insert not supported for DebugContentProvider."

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

    :goto_5
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p1, 0x460

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final onCreate()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    :goto_2
    const/16 p4, 0x45f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {p3, p4, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p3, "Query exception"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p3, "root"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->f875135777c17da3cef2ea6eeff5be29m()Lhqe;

    move-result-object p0

    nop

    nop

    iget-object p3, p0, Lhqe;->c:Landroid/content/UriMatcher;

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    nop

    nop

    nop

    iget-object p0, p0, Lhqe;->d:Ljava/util/Map;

    nop

    nop

    nop

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lrtm;

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    sget-object p0, Lhqe;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 p3, 0x464

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p3}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string p3, "bad uri %s"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p3, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    nop

    :cond_0
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/database/Cursor;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    move-object p2, p0

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

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

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

    nop

    :goto_b
    const-string p3, "com.android.shell"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_10
    if-eqz p3, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p2

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/16 p1, 0x45e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->b()Lsdo;

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

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->c:Lsdb;

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

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->ItYcokcYiKBk:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
