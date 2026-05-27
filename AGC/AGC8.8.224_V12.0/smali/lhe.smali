.class public final Llhe;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llhe;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llhe;->a:Ljava/lang/Object;

    check-cast p1, Landroid/app/Application;

    iget-object p3, p2, Llhe;->a:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p2, p2, Llhe;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "Context cannot be null"

    invoke-static {v0, v1, p2}, Lljz;->e(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llhf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llsr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkrt;

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Llpa;->b()Llpa;

    move-result-object p1

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llhe;->a:Ljava/lang/Object;

    return-void
.end method

.method public static l(Lnou;)Llhe;
    .locals 1

    new-instance v0, Llhe;

    invoke-direct {v0, p0}, Llhe;-><init>(Lnou;)V

    return-object v0
.end method


# virtual methods
.method public final a(Llhd;)V
    .locals 2

    iget-object v0, p0, Llhe;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Llhe;

    iget-object v0, v0, Llhe;->a:Ljava/lang/Object;

    sget v1, Llhf;->c:I

    check-cast v0, Llhf;

    iget-object v0, v0, Llhf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Llhd;)V
    .locals 2

    iget-object v0, p0, Llhe;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Llhe;

    iget-object v0, v0, Llhe;->a:Ljava/lang/Object;

    sget v1, Llhf;->c:I

    check-cast v0, Llhf;

    iget-object v0, v0, Llhf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .locals 30

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    move-object/from16 v0, p0

    const/16 v1, 0x22

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.apps.docs.editors.slides"

    aput-object v2, v8, v1

    const-string v2, "com.google.android.apps.geo.food.omniapp.nomni"

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const-string v2, "com.google.android.apps.gmail.testing.unit"

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const-string v2, "com.google.android.apps.gmm"

    const/4 v11, 0x3

    aput-object v2, v8, v11

    const-string v2, "com.google.android.apps.gmm.ads.label.testing.app"

    const/4 v12, 0x4

    aput-object v2, v8, v12

    const-string v2, "com.google.android.apps.gmm.search.map.testing.app"

    const/4 v13, 0x5

    aput-object v2, v8, v13

    const-string v2, "com.google.android.apps.googlecamera.fishfood"

    const/4 v14, 0x6

    aput-object v2, v8, v14

    const-string v2, "com.google.android.apps.jamkiosk"

    const/4 v15, 0x7

    aput-object v2, v8, v15

    const-string v2, "com.google.android.apps.messaging"

    const/16 v16, 0x8

    aput-object v2, v8, v16

    const-string v2, "com.google.android.apps.streetview.collector"

    const/16 v17, 0x9

    aput-object v2, v8, v17

    const-string v2, "com.google.android.apps.tasks"

    const/16 v18, 0xa

    aput-object v2, v8, v18

    const-string v2, "com.google.android.apps.tasks.ui.scuba"

    const/16 v19, 0xb

    aput-object v2, v8, v19

    const-string v2, "com.google.android.apps.work.clouddpc"

    const/16 v20, 0xc

    aput-object v2, v8, v20

    const-string v2, "com.google.android.apps.work.clouddpc.arc"

    const/16 v21, 0xd

    aput-object v2, v8, v21

    const-string v2, "com.google.android.apps.youtube.creator"

    const/16 v7, 0xe

    aput-object v2, v8, v7

    const/16 v2, 0xf

    const-string v3, "com.google.android.apps.youtube.kids"

    aput-object v3, v8, v2

    const/16 v2, 0x10

    const-string v3, "com.google.android.apps.youtube.mango"

    aput-object v3, v8, v2

    const/16 v2, 0x11

    const-string v3, "com.google.android.apps.youtube.music"

    aput-object v3, v8, v2

    const/16 v2, 0x12

    const-string v3, "com.google.android.apps.youtube.unplugged"

    aput-object v3, v8, v2

    const/16 v2, 0x13

    const-string v3, "com.google.android.apps.youtube.vr"

    aput-object v3, v8, v2

    const/16 v2, 0x14

    const-string v3, "com.google.android.apps.youtube.vr.oculus"

    aput-object v3, v8, v2

    const/16 v2, 0x15

    const-string v3, "com.google.android.gms"

    aput-object v3, v8, v2

    const/16 v2, 0x16

    const-string v3, "com.google.android.googlequicksearchbox"

    aput-object v3, v8, v2

    const/16 v2, 0x17

    const-string v3, "com.google.android.inputmethod.latin"

    aput-object v3, v8, v2

    const/16 v2, 0x18

    const-string v3, "com.google.android.inputmethod.latin.canary"

    aput-object v3, v8, v2

    const/16 v2, 0x19

    const-string v3, "com.google.android.inputmethod.latin.dev"

    aput-object v3, v8, v2

    const/16 v2, 0x1a

    const-string v3, "com.google.android.play.games"

    aput-object v3, v8, v2

    const/16 v2, 0x1b

    const-string v3, "com.google.android.youtube"

    aput-object v3, v8, v2

    const/16 v2, 0x1c

    const-string v3, "com.google.android.youtube.test"

    aput-object v3, v8, v2

    const/16 v2, 0x1d

    const-string v3, "com.google.android.youtube.tv"

    aput-object v3, v8, v2

    const/16 v2, 0x1e

    const-string v3, "com.google.android.youtube.tvkids"

    aput-object v3, v8, v2

    const/16 v2, 0x1f

    const-string v3, "com.google.android.youtube.tvunplugged"

    aput-object v3, v8, v2

    const/16 v2, 0x20

    const-string v3, "com.google.intelligence.sense.ambientmusic.functional.emulator"

    aput-object v3, v8, v2

    const/16 v2, 0x21

    const-string v3, "com.google.intelligence.sense.ambientmusic.history.functional"

    aput-object v3, v8, v2

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.GoogleCamera"

    const-string v4, "com.google.android.GoogleCameraEng"

    const-string v5, "com.google.android.apps.docs"

    const-string v6, "com.google.android.apps.docs.editors.docs"

    const-string v22, "com.google.android.apps.docs.editors.sheets"

    const/16 v15, 0xe

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v8}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v2

    iget-object v3, v0, Llhe;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v9

    :cond_1
    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "com.google.android.apps.diagnosticstool"

    aput-object v3, v2, v1

    const-string v1, "com.google.android.apps.dragonfly"

    aput-object v1, v2, v9

    const-string v1, "com.google.android.apps.dynamite"

    aput-object v1, v2, v10

    const-string v1, "com.google.android.apps.gmm.home.cards.yourexplore"

    aput-object v1, v2, v11

    const-string v1, "com.google.android.apps.internal.admobsdk.mediumtest.stability"

    aput-object v1, v2, v12

    const-string v1, "com.google.android.apps.nbu.paisa.user.integration.home"

    aput-object v1, v2, v13

    const-string v1, "com.google.android.apps.nbu.paisa.user.integration.homescreen"

    aput-object v1, v2, v14

    const-string v1, "com.google.android.apps.nbu.paisa.user.integration.microapp"

    const/4 v3, 0x7

    aput-object v1, v2, v3

    const-string v1, "com.google.android.apps.nbu.paisa.user.integration.qrcode"

    aput-object v1, v2, v16

    const-string v1, "com.google.android.apps.searchlite.homescreen"

    aput-object v1, v2, v17

    const-string v1, "com.google.android.flutter.testing.integrationtest.skeleton"

    aput-object v1, v2, v18

    const-string v1, "com.google.android.libraries.performance.primes.sample.profiling.application"

    aput-object v1, v2, v19

    const-string v1, "com.google.android.marvin.talkback"

    aput-object v1, v2, v20

    const-string v1, "com.google.android.street"

    aput-object v1, v2, v21

    const-string v23, "com.google.android.apps.accessibility.reveal"

    const-string v24, "com.google.android.apps.adwords"

    const-string v25, "com.google.android.apps.adwords.devel"

    const-string v26, "com.google.android.apps.adwords.dogfood"

    const-string v27, "com.google.android.apps.adwords.fishfood"

    const-string v28, "com.google.android.apps.adwords.nightly"

    move-object/from16 v29, v2

    invoke-static/range {v23 .. v29}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v1

    iget-object v2, v0, Llhe;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final d()Llrg;
    .locals 2

    new-instance v0, Llrg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Llrg;-><init>(Llhe;[B[B)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Llhe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final f()Lkzf;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Llhe;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkyc;

    invoke-interface {v2}, Lkyc;->a()Lkzf;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Llpm;->g(Ljava/lang/Iterable;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->k(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized g()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llhe;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(Lkya;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llhe;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Lkqu;
    .locals 3

    new-instance v0, Lkqu;

    new-instance v1, Landroid/content/ContentValues;

    iget-object v2, p0, Llhe;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Lkqu;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;I)V
    .locals 1

    iget-object p2, p0, Llhe;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Landroid/content/ContentValues;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Llhe;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
