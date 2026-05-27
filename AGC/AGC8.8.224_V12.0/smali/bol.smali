.class public final Lbol;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static volatile g:Lbol;

.field private static volatile h:Z


# instance fields
.field public final a:Lbsw;

.field public final b:Lboq;

.field public final c:Lbsu;

.field public final d:Lbyu;

.field public final e:Ljava/util/List;

.field public final f:Lbze;

.field private final i:Lbtp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llij;Lbtp;Lbsw;Lbsu;Lbyu;Lbze;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lbkc;[B[B[B[B[B)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lbol;->e:Ljava/util/List;

    move-object/from16 v1, p4

    iput-object v1, v0, Lbol;->a:Lbsw;

    move-object/from16 v3, p5

    iput-object v3, v0, Lbol;->c:Lbsu;

    move-object/from16 v1, p3

    iput-object v1, v0, Lbol;->i:Lbtp;

    move-object/from16 v1, p6

    iput-object v1, v0, Lbol;->d:Lbyu;

    move-object/from16 v1, p7

    iput-object v1, v0, Lbol;->f:Lbze;

    move-object/from16 v9, p11

    iget-object v1, v9, Lbkc;->a:Ljava/lang/Object;

    const-class v2, Lboo;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbor;

    check-cast v1, Lboo;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput v1, Lbwv;->a:I

    :cond_0
    new-instance v4, Lboz;

    move-object/from16 v1, p10

    invoke-direct {v4, v0, v1}, Lboz;-><init>(Lbol;Ljava/util/List;)V

    new-instance v5, Lbze;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lbze;-><init>([S)V

    new-instance v15, Lboq;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p2

    move-object/from16 v9, p11

    invoke-direct/range {v1 .. v14}, Lboq;-><init>(Landroid/content/Context;Lbsu;Lcaq;Lbze;Ljava/util/Map;Ljava/util/List;Llij;Lbkc;[B[B[B[B[B)V

    iput-object v15, v0, Lbol;->b:Lboq;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lbol;
    .locals 30

    sget-object v0, Lbol;->g:Lbol;

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbol;->d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    const-class v1, Lbol;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lbol;->g:Lbol;

    if-nez v2, :cond_c

    sget-boolean v2, Lbol;->h:Z

    if-nez v2, :cond_b

    const/4 v2, 0x1

    sput-boolean v2, Lbol;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    new-instance v12, Lwy;

    invoke-direct {v12}, Lwy;-><init>()V

    new-instance v4, Lbkc;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lbkc;-><init>([B)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "GlideModule"

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Ldka;->b(Ljava/lang/String;)Lcom/google/android/apps/camera/filmstrip/GlideConfiguration;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    :try_start_3
    invoke-static {}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/filmstrip/GlideConfiguration;

    invoke-virtual {v7}, Lcom/google/android/apps/camera/filmstrip/GlideConfiguration;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/filmstrip/GlideConfiguration;

    goto :goto_3

    :cond_5
    new-instance v0, Lbtt;

    invoke-direct {v0, v3}, Lbtt;-><init>(Z)V

    invoke-static {}, Lbtx;->a()I

    move-result v6

    invoke-virtual {v0, v6}, Lbtt;->b(I)V

    const-string v6, "source"

    iput-object v6, v0, Lbtt;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lbtt;->a()Lbtx;

    move-result-object v20

    new-instance v0, Lbtt;

    invoke-direct {v0, v2}, Lbtt;-><init>(Z)V

    invoke-virtual {v0, v2}, Lbtt;->b(I)V

    const-string v6, "disk-cache"

    iput-object v6, v0, Lbtt;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lbtt;->a()Lbtx;

    move-result-object v19

    invoke-static {}, Lbtx;->a()I

    move-result v0

    const/4 v6, 0x4

    if-lt v0, v6, :cond_6

    const/4 v0, 0x2

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    :goto_4
    new-instance v7, Lbtt;

    invoke-direct {v7, v2}, Lbtt;-><init>(Z)V

    invoke-virtual {v7, v0}, Lbtt;->b(I)V

    const-string v0, "animation"

    iput-object v0, v7, Lbtt;->a:Ljava/lang/String;

    invoke-virtual {v7}, Lbtt;->a()Lbtx;

    move-result-object v21

    new-instance v0, Lbtq;

    invoke-direct {v0, v15}, Lbtq;-><init>(Landroid/content/Context;)V

    iget-object v7, v0, Lbtq;->a:Landroid/app/ActivityManager;

    invoke-virtual {v7}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v7

    if-eq v2, v7, :cond_7

    const/high16 v7, 0x400000

    goto :goto_5

    :cond_7
    const/high16 v7, 0x200000

    :goto_5
    iget-object v8, v0, Lbtq;->a:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v9

    const/high16 v10, 0x100000

    mul-int v9, v9, v10

    invoke-virtual {v8}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v8

    if-eq v2, v8, :cond_8

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_6

    :cond_8
    const v2, 0x3ea8f5c3    # 0.33f

    :goto_6
    int-to-float v8, v9

    mul-float v8, v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v8, v0, Lbtq;->c:Lbkb;

    iget-object v8, v8, Lbkb;->a:Ljava/lang/Object;

    check-cast v8, Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, v0, Lbtq;->c:Lbkb;

    iget-object v9, v9, Lbkb;->a:Ljava/lang/Object;

    check-cast v9, Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v8, v8, v9

    iget v9, v0, Lbtq;->b:F

    mul-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    mul-float v9, v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-float/2addr v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v2, v7

    add-int v9, v6, v8

    if-gt v9, v2, :cond_9

    goto :goto_7

    :cond_9
    iget v6, v0, Lbtq;->b:F

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v6, v8

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float v6, v2, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v0, v0, Lbtq;->b:F

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    :goto_7
    new-instance v11, Lbze;

    invoke-direct {v11, v5}, Lbze;-><init>([C)V

    if-lez v8, :cond_a

    new-instance v0, Lbte;

    int-to-long v8, v8

    invoke-direct {v0, v8, v9}, Lbte;-><init>(J)V

    move-object v8, v0

    goto :goto_8

    :cond_a
    new-instance v0, Lbsx;

    invoke-direct {v0}, Lbsx;-><init>()V

    move-object v8, v0

    :goto_8
    new-instance v9, Lbtd;

    invoke-direct {v9, v7}, Lbtd;-><init>(I)V

    new-instance v7, Lbtp;

    int-to-long v5, v6

    invoke-direct {v7, v5, v6}, Lbtp;-><init>(J)V

    new-instance v2, Lbkb;

    invoke-direct {v2, v15}, Lbkb;-><init>(Landroid/content/Context;)V

    new-instance v6, Llij;

    new-instance v22, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v25, Lbtx;->a:J

    sget-object v27, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v28, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v28 .. v28}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v5, Lbtw;

    new-instance v10, Lbtv;

    invoke-direct {v10, v3}, Lbtv;-><init>(I)V

    const-string v13, "source-unlimited"

    invoke-direct {v5, v10, v13, v3}, Lbtw;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Z)V

    const/16 v23, 0x0

    const v24, 0x7fffffff

    move-object/from16 v29, v5

    invoke-direct/range {v22 .. v29}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v23}, Llij;-><init>(Lbtp;Lbkb;Lbtx;Lbtx;Lbtx;[B[B)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    new-instance v2, Lbkc;

    const/4 v0, 0x0

    invoke-direct {v2, v4, v0, v0}, Lbkc;-><init>(Lbkc;[B[B)V

    new-instance v10, Lbyu;

    invoke-direct {v10}, Lbyu;-><init>()V

    new-instance v0, Lbol;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v0

    move-object v5, v15

    move-object v3, v15

    move-object v15, v2

    invoke-direct/range {v4 .. v20}, Lbol;-><init>(Landroid/content/Context;Llij;Lbtp;Lbsw;Lbsu;Lbyu;Lbze;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lbkc;[B[B[B[B[B)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lbol;->g:Lbol;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lbol;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to find metadata to parse GlideModules"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    sput-boolean v2, Lbol;->h:Z

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Glide has been called recursively, this is probably an internal library error!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_9
    monitor-exit v1

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_d
    :goto_a
    sget-object v0, Lbol;->g:Lbol;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lbpd;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lbze;->u(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v0

    iget-object v0, v0, Lbol;->d:Lbyu;

    invoke-virtual {v0, p0}, Lbyu;->a(Landroid/content/Context;)Lbpd;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbol;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lbol;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-static {p0}, Lbol;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-static {p0}, Lbol;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    move-exception p0

    const/4 p0, 0x5

    const-string v1, "Glide"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static e(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbol;->b:Lboq;

    invoke-virtual {v0}, Lboq;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    invoke-static {}, Lcaw;->h()V

    iget-object v0, p0, Lbol;->i:Lbtp;

    invoke-virtual {v0}, Lcas;->i()V

    iget-object v0, p0, Lbol;->a:Lbsw;

    invoke-interface {v0}, Lbsw;->c()V

    iget-object v0, p0, Lbol;->c:Lbsu;

    invoke-interface {v0}, Lbsu;->b()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 5

    invoke-static {}, Lcaw;->h()V

    iget-object v0, p0, Lbol;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbol;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbpd;

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbol;->i:Lbtp;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_1

    invoke-virtual {v0}, Lcas;->i()V

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3

    const/16 p1, 0xf

    :cond_2
    invoke-virtual {v0}, Lcas;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcas;->j(J)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lbol;->a:Lbsw;

    invoke-interface {v0, p1}, Lbsw;->e(I)V

    iget-object v0, p0, Lbol;->c:Lbsu;

    invoke-interface {v0, p1}, Lbsu;->d(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
