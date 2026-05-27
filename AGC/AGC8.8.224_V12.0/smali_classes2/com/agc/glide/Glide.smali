.class public Lcom/agc/glide/Glide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/Glide$RequestOptionsFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final DESTROYED_ACTIVITY_WARNING:Ljava/lang/String; = "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/agc/glide/Glide;

.field private static volatile isInitializing:Z


# instance fields
.field private final arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

.field private bitmapPreFiller:Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;

.field private final connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

.field private final defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

.field private final engine:Lcom/agc/glide/load/engine/Engine;

.field private final glideContext:Lcom/agc/glide/GlideContext;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

.field private memoryCategory:Lcom/agc/glide/MemoryCategory;

.field private final requestManagerRetriever:Lcom/agc/glide/manager/RequestManagerRetriever;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/manager/RequestManagerRetriever;Lcom/agc/glide/manager/ConnectivityMonitorFactory;ILcom/agc/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;Lcom/agc/glide/GlideExperiments;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/engine/Engine;",
            "Lcom/agc/glide/load/engine/cache/MemoryCache;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/agc/glide/manager/RequestManagerRetriever;",
            "Lcom/agc/glide/manager/ConnectivityMonitorFactory;",
            "I",
            "Lcom/agc/glide/Glide$RequestOptionsFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/TransitionOptions<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/agc/glide/module/GlideModule;",
            ">;",
            "Lcom/agc/glide/module/AppGlideModule;",
            "Lcom/agc/glide/GlideExperiments;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    sget-object v1, Lcom/agc/glide/MemoryCategory;->NORMAL:Lcom/agc/glide/MemoryCategory;

    iput-object v1, v0, Lcom/agc/glide/Glide;->memoryCategory:Lcom/agc/glide/MemoryCategory;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/agc/glide/Glide;->engine:Lcom/agc/glide/load/engine/Engine;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/agc/glide/Glide;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/agc/glide/Glide;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/agc/glide/Glide;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/agc/glide/Glide;->requestManagerRetriever:Lcom/agc/glide/manager/RequestManagerRetriever;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/agc/glide/Glide;->connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/agc/glide/Glide;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-static {p0, v2, v3}, Lcom/agc/glide/RegistryFactory;->lazilyCreateAndInitializeRegistry(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    move-result-object v5

    new-instance v6, Lcom/agc/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v6}, Lcom/agc/glide/request/target/ImageViewTargetFactory;-><init>()V

    new-instance v13, Lcom/agc/glide/GlideContext;

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p2

    move-object/from16 v11, p14

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/agc/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;Lcom/agc/glide/request/target/ImageViewTargetFactory;Lcom/agc/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/GlideExperiments;I)V

    iput-object v13, v0, Lcom/agc/glide/Glide;->glideContext:Lcom/agc/glide/GlideContext;

    return-void
.end method

.method public static checkAndInitializeGlide(Landroid/content/Context;Lcom/agc/glide/GeneratedAppGlideModule;)V
    .locals 1

    sget-boolean v0, Lcom/agc/glide/Glide;->isInitializing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/agc/glide/Glide;->isInitializing:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/agc/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/agc/glide/GeneratedAppGlideModule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v0, Lcom/agc/glide/Glide;->isInitializing:Z

    return-void

    :catchall_0
    move-exception p0

    sput-boolean v0, Lcom/agc/glide/Glide;->isInitializing:Z

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Glide has been called recursively, this is probably an internal library error!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enableHardwareBitmaps()V
    .locals 1

    invoke-static {}, Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;->unblockHardwareBitmaps()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/agc/glide/Glide;
    .locals 3

    sget-object v0, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->getAnnotationGeneratedGlideModules(Landroid/content/Context;)Lcom/agc/glide/GeneratedAppGlideModule;

    move-result-object v0

    const-class v1, Lcom/agc/glide/Glide;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/agc/glide/Glide;->checkAndInitializeGlide(Landroid/content/Context;Lcom/agc/glide/GeneratedAppGlideModule;)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    return-object p0
.end method

.method private static getAnnotationGeneratedGlideModules(Landroid/content/Context;)Lcom/agc/glide/GeneratedAppGlideModule;
    .locals 5

    :try_start_0
    const-string v0, "com.agc.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/agc/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_4
    move-exception p0

    const/4 p0, 0x5

    const-string v0, "Glide"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/agc/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Glide"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private static getRetriever(Landroid/content/Context;)Lcom/agc/glide/manager/RequestManagerRetriever;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->getRequestManagerRetriever()Lcom/agc/glide/manager/RequestManagerRetriever;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;)V
    .locals 3

    invoke-static {p0}, Lcom/agc/glide/Glide;->getAnnotationGeneratedGlideModules(Landroid/content/Context;)Lcom/agc/glide/GeneratedAppGlideModule;

    move-result-object v0

    const-class v1, Lcom/agc/glide/Glide;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/agc/glide/Glide;->tearDown()V

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/agc/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;Lcom/agc/glide/GeneratedAppGlideModule;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/agc/glide/Glide;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/agc/glide/Glide;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/agc/glide/Glide;->tearDown()V

    :cond_0
    sput-object p0, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initializeGlide(Landroid/content/Context;Lcom/agc/glide/GeneratedAppGlideModule;)V
    .locals 1

    new-instance v0, Lcom/agc/glide/GlideBuilder;

    invoke-direct {v0}, Lcom/agc/glide/GlideBuilder;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/agc/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;Lcom/agc/glide/GeneratedAppGlideModule;)V

    return-void
.end method

.method private static initializeGlide(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;Lcom/agc/glide/GeneratedAppGlideModule;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/agc/glide/module/AppGlideModule;->isManifestParsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/agc/glide/module/ManifestParser;

    invoke-direct {v0, p0}, Lcom/agc/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/agc/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v0

    :cond_1
    const/4 v1, 0x3

    const-string v2, "Glide"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/agc/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/agc/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/agc/glide/module/GlideModule;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/glide/module/GlideModule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/agc/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/agc/glide/GlideBuilder;->setRequestManagerFactory(Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/glide/module/GlideModule;

    invoke-interface {v2, p0, p1}, Lcom/agc/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;)V

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2, p0, p1}, Lcom/agc/glide/module/AppGlideModule;->applyOptions(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;)V

    :cond_8
    invoke-virtual {p1, p0, v0, p2}, Lcom/agc/glide/GlideBuilder;->build(Landroid/content/Context;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/Glide;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object p1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    const-class v0, Lcom/agc/glide/Glide;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static tearDown()V
    .locals 3

    const-class v0, Lcom/agc/glide/Glide;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    invoke-virtual {v1}, Lcom/agc/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    iget-object v1, v1, Lcom/agc/glide/Glide;->engine:Lcom/agc/glide/load/engine/Engine;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/Engine;->shutdown()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/agc/glide/Glide;->glide:Lcom/agc/glide/Glide;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static throwIncorrectGlideModule(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static with(Landroid/app/Activity;)Lcom/agc/glide/RequestManager;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/glide/Glide;->with(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/agc/glide/RequestManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/glide/Glide;->with(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/agc/glide/RequestManager;
    .locals 1

    invoke-static {p0}, Lcom/agc/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/agc/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lcom/agc/glide/RequestManager;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/agc/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/view/View;)Lcom/agc/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/agc/glide/RequestManager;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/agc/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/Fragment;)Lcom/agc/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/FragmentActivity;)Lcom/agc/glide/RequestManager;
    .locals 1

    invoke-static {p0}, Lcom/agc/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/agc/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/agc/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    invoke-static {}, Lcom/agc/glide/util/Util;->assertBackgroundThread()V

    iget-object v0, p0, Lcom/agc/glide/Glide;->engine:Lcom/agc/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/Engine;->clearDiskCache()V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/agc/glide/Glide;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/cache/MemoryCache;->clearMemory()V

    iget-object v0, p0, Lcom/agc/glide/Glide;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    iget-object v0, p0, Lcom/agc/glide/Glide;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;->clearMemory()V

    return-void
.end method

.method public getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getBitmapPool()Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method public getConnectivityMonitorFactory()Lcom/agc/glide/manager/ConnectivityMonitorFactory;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getGlideContext()Lcom/agc/glide/GlideContext;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->glideContext:Lcom/agc/glide/GlideContext;

    return-object v0
.end method

.method public getRegistry()Lcom/agc/glide/Registry;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/agc/glide/manager/RequestManagerRetriever;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Glide;->requestManagerRetriever:Lcom/agc/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/Glide;->trimMemory(I)V

    return-void
.end method

.method public varargs declared-synchronized preFillBitmapPool([Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/Glide;->bitmapPreFiller:Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/Glide;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    invoke-interface {v0}, Lcom/agc/glide/Glide$RequestOptionsFactory;->build()Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getOptions()Lcom/agc/glide/load/Options;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/agc/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/DecodeFormat;

    new-instance v1, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;

    iget-object v2, p0, Lcom/agc/glide/Glide;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    iget-object v3, p0, Lcom/agc/glide/Glide;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v2, v3, v0}, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/DecodeFormat;)V

    iput-object v1, p0, Lcom/agc/glide/Glide;->bitmapPreFiller:Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/Glide;->bitmapPreFiller:Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerRequestManager(Lcom/agc/glide/RequestManager;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeFromManagers(Lcom/agc/glide/request/target/Target;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/glide/RequestManager;

    invoke-virtual {v2, p1}, Lcom/agc/glide/RequestManager;->untrack(Lcom/agc/glide/request/target/Target;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMemoryCategory(Lcom/agc/glide/MemoryCategory;)Lcom/agc/glide/MemoryCategory;
    .locals 2

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/agc/glide/Glide;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/agc/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/agc/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    iget-object v0, p0, Lcom/agc/glide/Glide;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/agc/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    iget-object v0, p0, Lcom/agc/glide/Glide;->memoryCategory:Lcom/agc/glide/MemoryCategory;

    iput-object p1, p0, Lcom/agc/glide/Glide;->memoryCategory:Lcom/agc/glide/MemoryCategory;

    return-object v0
.end method

.method public trimMemory(I)V
    .locals 3

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/glide/RequestManager;

    invoke-virtual {v2, p1}, Lcom/agc/glide/RequestManager;->onTrimMemory(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/agc/glide/Glide;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    iget-object v0, p0, Lcom/agc/glide/Glide;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    iget-object v0, p0, Lcom/agc/glide/Glide;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;->trimMemory(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unregisterRequestManager(Lcom/agc/glide/RequestManager;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/agc/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
