.class public Lcom/google/android/apps/camera/legacy/app/app/CameraApp;
.super Ljpz;
.source "PG"

# interfaces
.implements Lcom/google/android/apps/camera/contentprovider/HasCameraContentProviderComponent;
.implements Ltui;
.implements Ljjk;
.implements Lmnc;
.implements Liye;
.implements Lggy;
.implements Lgiu;


# static fields
.field private static final l:Lsdb;

.field private static final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field a:Landroid/app/NotificationManager;

.field b:Ltxm;

.field c:Ltxm;

.field d:Lqmh;

.field e:Lqyo;

.field f:Lggv;

.field public g:Lhoh;

.field h:Lhwy;

.field i:Lfdn;

.field private final n:Ljie;

.field private volatile o:Ljip;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-string v3, "gcastartup"

    nop

    sget-object v4, Lpco;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    if-eqz v5, :cond_0

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not register "

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". It was previously registered with: "

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {v0, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_2
    sget-object v4, Lpco;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lpcn;

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpco;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    new-instance v4, Lpcn;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lpcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v4}, Lpcn;->a()Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    :cond_3
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Registering \"%s\" after \"%s\" was loaded is racy."

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_5
    const v1, 0x19

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

    :goto_6
    iget-object v1, v0, Lqsp;->g:Lqph;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    const/4 v1, 0x0

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit v1

    nop

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

    :goto_b
    const-string v0, "com.google.android.apps.camera.legacy.app.app.CameraApp"

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

    :goto_c
    sget-wide v0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->j:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lqsp;->a:Lqsp;

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
    iput-object v1, v0, Lqsp;->g:Lqph;

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Lmkv;->d(J)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lizi;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lpco;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->l:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_5
    goto/32 :goto_12

    nop

    :goto_1d
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->n:Ljie;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljpz;-><init>()V

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

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljie;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()Lswg;
    .locals 3

    goto/32 :goto_d

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x17

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
    const/16 v2, 0xb

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v1, v2}, Lhuq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v0, p0, v2}, Lswg;-><init>(Landroid/content/Context;Ltxm;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v0, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    new-instance v1, Lswg;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lhuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final a()Lhif;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->n:Ljie;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljip;->a()Lhif;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object p0

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

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_c
    const v0, 0x9

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljie;->b(Landroid/content/Context;)V

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    nop

    nop

    const-string v2, "camera_vkp"

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    array-length v1, v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const v1, 0x7f1402ab

    nop

    nop

    nop

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->l:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/16 v2, 0x941

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    const-string v2, "Cannot start the Google Camera App since only the base APK split was detected"

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method protected attach(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->n:Ljie;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljie;->a()Lsui;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Class;)Liyg;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Liyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cameraContentProviderComponent(Lhon;)Lhok;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1}, Ljiq;-><init>(Ljip;Lhon;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljip;->a:Ljip;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

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

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :goto_10
    const-string v2, "initAppComponent needs to be called on main thread\u00ac"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljiq;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    invoke-static {v0, v2, v1}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Ltue;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const-string v1, "pyk"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v1, p0}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object p0

    nop

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljip;->bf:Ltur;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lsbm;->a:Lryh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v0, p0}, Ltuh;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ltuh;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final dw(Lnzk;)Lmhz;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljip;->dw(Lnzk;)Lmhz;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object p0

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

.method public final e()Ljip;
    .locals 20

    goto/32 :goto_4

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const v1, 0x13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

    nop

    if-nez v0, :cond_3

    nop

    nop

    const-string v0, "GCA_App#component"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "GCA_App#buildComponent"

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Ljjj;->a:Ltur;

    nop

    nop

    nop

    new-instance v7, Lmhz;

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    invoke-direct {v7, v1, v0}, Lmhz;-><init>(Landroid/app/Application;Landroid/content/Context;)V

    new-instance v6, Lfdo;

    nop

    nop

    iget-object v0, v1, Ljpz;->k:Ljow;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v6, v0, v2}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    new-instance v3, Lhst;

    nop

    invoke-direct {v3}, Lhst;-><init>()V

    new-instance v4, Liyl;

    nop

    invoke-direct {v4}, Liyl;-><init>()V

    new-instance v5, Ljmo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljmo;-><init>()V

    new-instance v8, Ljmo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljmo;-><init>()V

    new-instance v9, Lhhg;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Lhhg;-><init>()V

    new-instance v10, Lhst;

    nop

    nop

    invoke-direct {v10}, Lhst;-><init>()V

    new-instance v11, Lght;

    nop

    nop

    nop

    invoke-direct {v11}, Lght;-><init>()V

    new-instance v12, Lfdn;

    nop

    nop

    invoke-direct {v12, v2, v2}, Lfdn;-><init>([B[S)V

    new-instance v13, Ljmo;

    nop

    nop

    nop

    nop

    invoke-direct {v13}, Ljmo;-><init>()V

    new-instance v14, Lkav;

    nop

    nop

    nop

    invoke-direct {v14}, Lkav;-><init>()V

    new-instance v15, Lfdo;

    nop

    nop

    invoke-direct {v15, v2, v2}, Lfdo;-><init>([B[I)V

    new-instance v16, Lnzk;

    nop

    nop

    invoke-direct/range {v16 .. v16}, Lnzk;-><init>()V

    new-instance v17, Lpuq;

    nop

    nop

    nop

    invoke-direct/range {v17 .. v17}, Lpuq;-><init>()V

    new-instance v18, Lhhg;

    nop

    nop

    nop

    invoke-direct/range {v18 .. v18}, Lhhg;-><init>()V

    new-instance v19, Lnzk;

    nop

    nop

    nop

    invoke-direct/range {v19 .. v19}, Lnzk;-><init>()V

    new-instance v0, Ljip;

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    invoke-direct/range {v2 .. v19}, Ljip;-><init>(Lhst;Liyl;Ljmo;Lfdo;Lmhz;Ljmo;Lhhg;Lhst;Lght;Lfdn;Ljmo;Lkav;Lfdo;Lnzk;Lpuq;Lhhg;Lnzk;)V

    iput-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#initialize"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

    nop

    nop

    nop

    nop

    const-string v2, "GCA_App#inject"

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v0, Ljip;->i:Ltur;

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lhoh;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Ljip;->w:Ltur;

    nop

    nop

    invoke-interface {v3}, Ltur;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lhst;

    nop

    nop

    nop

    iget-object v3, v0, Ljip;->li:Lhst;

    nop

    nop

    iget-object v3, v0, Ljip;->p:Ltur;

    nop

    invoke-interface {v3}, Ltur;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lpcu;

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3}, Lpcs;->c(Lrss;)Lpcu;

    move-result-object v3

    nop

    invoke-static {v3}, Lhpn;->c(Lpcu;)Lpct;

    move-result-object v3

    nop

    iget-object v4, v0, Ljip;->n:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ltur;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lowu;

    nop

    nop

    iget-object v4, v0, Ljip;->y:Ltur;

    nop

    nop

    invoke-interface {v4}, Ltur;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v4, Lfdn;

    nop

    invoke-direct {v4, v2, v3}, Lfdn;-><init>(Lhoh;Lpct;)V

    iput-object v4, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->i:Lfdn;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljip;->g()Landroid/app/NotificationManager;

    move-result-object v2

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->a:Landroid/app/NotificationManager;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    check-cast v4, Lhoh;

    nop

    iget-object v5, v0, Ljip;->z:Ltur;

    nop

    nop

    nop

    iget-object v6, v0, Ljip;->B:Ltur;

    nop

    nop

    nop

    nop

    iget-object v7, v0, Ljip;->C:Ltur;

    nop

    iget-object v8, v0, Ljip;->D:Ltur;

    nop

    new-instance v2, Lhwy;

    nop

    nop

    nop

    move-object v3, v2

    nop

    invoke-direct/range {v3 .. v8}, Lhwy;-><init>(Lhoh;Ltxm;Ltxm;Ltxm;Ltxm;)V

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->h:Lhwy;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljip;->E:Ltur;

    nop

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->b:Ltxm;

    nop

    nop

    iget-object v2, v0, Ljip;->u:Ltur;

    nop

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->c:Ltxm;

    nop

    nop

    iget-object v2, v0, Ljip;->F:Ltur;

    nop

    nop

    iget-object v2, v0, Ljip;->J:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lqmh;

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Lqmh;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lhoh;

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->g:Lhoh;

    nop

    nop

    nop

    iget-object v2, v0, Ljip;->K:Ltur;

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lqyo;

    nop

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e:Lqyo;

    nop

    nop

    iget-object v0, v0, Ljip;->A:Ltur;

    nop

    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lggv;

    nop

    iput-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f:Lggv;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#PrimesInitialize"

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Lqmh;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqmh;->a:Lqmi;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqmi;->a()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#PrimesMemoryMonitor"

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Lqmh;

    nop

    nop

    iget-object v0, v0, Lqmh;->a:Lqmi;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqmi;->c()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#strictMode"

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->i:Lfdn;

    nop

    nop

    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#startAsync"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->h:Lhwy;

    nop

    nop

    nop

    const-string v2, "appStartup.start"

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    iget-object v3, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v4, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v4}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lsbh;

    nop

    nop

    nop

    nop

    nop

    iget v3, v3, Lsbh;->c:I

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_c
    if-ge v4, v3, :cond_2

    nop

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ltxm;

    nop

    nop

    nop

    invoke-interface {v5}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lmiu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lmiu;->run()V

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v2, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v0, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Llah;

    nop

    invoke-virtual {v0}, Llah;->run()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#cancelNotifications"

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->a:Landroid/app/NotificationManager;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->yBBDycba:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f:Lggv;

    nop

    new-instance v2, Lggx;

    nop

    nop

    iget-object v3, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->b:Ltxm;

    nop

    nop

    nop

    invoke-direct {v2, v3, v4}, Lggx;-><init>(Ltxm;Ltxm;)V

    invoke-virtual {v0, v2}, Lggv;->a(Lggu;)Lpci;

    new-instance v0, Lggs;

    nop

    nop

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f:Lggv;

    nop

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    nop

    nop

    invoke-direct {v0, v2, v3}, Lggs;-><init>(Lggv;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Lqmh;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqmh;->a:Lqmi;

    nop

    nop

    nop

    invoke-interface {v0}, Lqmi;->b()V

    sget-object v0, Lpcr;->b:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpcw;->a:Lpcw;

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lpcr;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpcw;->a:Lpcw;

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lpcr;->c:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpcw;->a:Lpcw;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lpcr;->d:Ljava/util/logging/Logger;

    nop

    sget-object v2, Lpcw;->a:Lpcw;

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->o:Ljip;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    :goto_f
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final initAppComponent()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()V
    .locals 31

    goto/32 :goto_fc

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    :goto_1
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3
    move v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x2

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_b9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-object v9, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v23, v12

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v6}, Lscn;-><init>()V

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_e9

    nop

    nop

    :goto_d
    const/16 v7, 0x3a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lcom/CameraLensesScan;-><init>()V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lqym;->values()[Lqym;

    move-result-object v2

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v4, Lrcc;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v3, Lqso;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aput-object v8, v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_13
    const/4 v6, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    invoke-super/range {p0 .. p0}, Ljpz;->onCreate()V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v0}, Lmkp;->h(Ljava/lang/Enum;)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v6, ":privileged_process"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lggz;

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v9, v8, v5, v3}, Lsfn;-><init>(Ljava/lang/String;ZI)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lqzk;->c()V

    :goto_1b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e:Lqyo;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v24, v2

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :cond_3
    goto/32 :goto_119

    nop

    nop

    nop

    :goto_21
    iget-object v11, v12, Lsfx;->f:Lsew;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_22
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v3, v2, v4}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v8, Lrbz;

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v13, v8, Lsfx;->c:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v12, Lsfx;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_29
    iget v9, v8, Lsfx;->g:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v3, Lqlc;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2c
    if-ne v6, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v8, v2, Lsfx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_11b

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_8c

    nop

    nop

    :goto_30
    invoke-direct {v3, v2, v4}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-super/range {p0 .. p0}, Ljpz;->onCreate()V

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_32
    invoke-direct {v3, v2, v4}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_14c

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v2}, Lscn;-><init>()V

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_36
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v3, Lqlc;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v3}, Lqzk;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    invoke-static {v0}, Lcom/a;->za(Ljava/lang/Object;)V

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v4, 0xb

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aput-object v12, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_3c
    move-object/from16 v23, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v4, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_3e
    move v6, v3

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_6

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_6
    goto/32 :goto_138

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_43
    if-lt v5, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v6, v0, Lqyo;->b:Ljava/util/Map;

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

    :goto_45
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/16 v20, 0x2

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v0}, Lcom/CameraLensesScan;-><init>()V

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v1, Lqqy;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4a
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_12f

    nop

    nop

    :goto_4b
    const/16 v16, 0x2

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_4c
    invoke-static {}, Lmkv;->e()Lmkv;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v3, "camera:logging_override_level"

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_4e
    sput-object v1, Lqqy;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v2, v2, Lsfx;->f:Lsew;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/16 v4, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_52
    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_b9

    nop

    :goto_54
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_55
    iget-object v2, v0, Lqyo;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_56
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v10, v12, Lsfx;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5a
    throw v0

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2bf9cf33 -> :sswitch_2
        -0x2bbec774 -> :sswitch_1
        0x6991060e -> :sswitch_0
        0x70d2f175 -> :sswitch_3
    .end sparse-switch

    :goto_5b
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v10, v2, Lsfx;->c:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v4, v0, Lqyo;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_105

    nop

    nop

    nop

    :goto_5f
    iget-object v3, v2, Lqsp;->h:Lqph;

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v4}, Lqyn;->a()V

    :goto_61
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v7, v6, Lscn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {v4}, Lrcq;-><init>()V

    goto/32 :goto_9e

    nop

    nop

    :goto_64
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {}, Lqzk;->f()Z

    move-result v3

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_67
    iget-boolean v14, v8, Lsfx;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_68
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v4}, Lrco;-><init>()V

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_6b
    invoke-direct {v7}, Lrby;-><init>()V

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_6c
    const-string v7, ":leakcanary"

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_6d
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    :goto_6e
    sput-object v1, Lqqy;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_c1

    nop

    nop

    :goto_70
    move-object/from16 v17, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_72
    invoke-direct {v6, v7, v5}, Lswg;-><init>([Lsfo;I)V

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_73
    sput v2, Lhpp;->a:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_74
    invoke-static {v3, v6, v7}, Lqzk;->d(Ljava/lang/Runnable;J)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    :goto_76
    sget-object v6, Lmke;->a:Lmke;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_77
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_78
    new-instance v9, Lsfn;

    nop

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

    :goto_79
    move-object/from16 v24, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_7a
    if-ne v6, v4, :cond_a

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2c

    nop

    nop

    :goto_7b
    const-string v2, "HierarchySnapshot#init"

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7d
    move/from16 v19, v9

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_7e
    invoke-direct {v9, v10, v8, v3}, Lsfn;-><init>(Ljava/lang/String;ZI)V

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v21, v10

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v4, :cond_b

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_83
    invoke-direct {v7, v3, v5}, Lswg;-><init>([Lsfo;I)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_84
    new-instance v7, Lswg;

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/16 v4, 0xe

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

    :goto_86
    if-eq v7, v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_c
    goto/32 :goto_a3

    nop

    nop

    :goto_87
    new-instance v6, Lswg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const-string v1, "No AttributeGenerators were registered. Try calling withCommonAttributeGenerators()."

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v3, Lqlc;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const-string v7, ":train"

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_8b
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_8c
    sget-object v2, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-eqz v7, :cond_d

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_dc

    nop

    nop

    :goto_8e
    const/4 v10, 0x0

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_8f
    move/from16 v28, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_ea

    nop

    nop

    :goto_91
    iget-object v8, v8, Lsfx;->f:Lsew;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_92
    const-wide/16 v6, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v4, Lrcq;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_94
    if-ne v6, v8, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_95
    invoke-direct {v4, v5}, Lrcp;-><init>(I)V

    goto/32 :goto_f5

    nop

    nop

    :goto_96
    move-object/from16 v27, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_97
    move-object/from16 v29, v10

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {}, Lcom/a;->aa()V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    new-instance v12, Lsfx;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9b
    new-instance v2, Lscn;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-boolean v11, v8, Lsfx;->b:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_115

    nop

    nop

    :goto_9e
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9f
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_f
    :goto_a0
    goto/32 :goto_ad

    nop

    nop

    :goto_a1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static/range {p0 .. p0}, Lqvy;->f(Landroid/content/Context;)V

    goto/32 :goto_9d

    nop

    nop

    :goto_a3
    const-string v1, ""

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move-object v9, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_a5
    new-instance v3, Lqlc;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v7, v4}, Lrcp;-><init>(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    new-instance v0, Lcom/CameraLensesScan;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_a9
    if-eqz v6, :cond_10

    nop

    goto/32 :goto_11b

    nop

    :cond_10
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {v3, v6, v7}, Lqzk;->d(Ljava/lang/Runnable;J)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_ab
    const/16 v22, 0x1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const-string v7, ":learning_bg"

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    move v1, v4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_ae
    move/from16 v12, v16

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_af
    const-string v1, "GCA_App#onCreate"

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v3, v2, v4}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v3, v2, v4}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11f

    nop

    nop

    :goto_b3
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct {v4, v2}, Lrcc;-><init>(Lrcg;)V

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b6
    invoke-direct/range {v9 .. v16}, Lsfx;-><init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b7
    invoke-direct {v2, v3}, Lggz;-><init>(Lggy;)V

    goto/32 :goto_2

    nop

    nop

    :goto_b8
    goto/16 :goto_a0

    nop

    nop

    :goto_b9
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v6, v7}, Lhoa;->a(Lhoa;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-static {v2}, Lsfp;->a(Lscn;)V

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_bc
    new-instance v4, Lrco;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_bd
    new-instance v6, Lscn;

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

    :goto_be
    invoke-direct {v3, v2, v0}, Lqso;-><init>(Lqsp;Landroid/app/Application;)V

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_bf
    goto/32 :goto_1c

    nop

    nop

    :goto_c0
    invoke-direct/range {v23 .. v30}, Lsfx;-><init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c1
    sget-object v1, Lqqy;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_c2
    new-array v3, v3, [Lsfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_c4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5a

    nop

    nop

    :goto_c5
    aget-object v4, v2, v5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_c6
    const/16 v25, 0x0

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto :goto_cb

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_127

    nop

    nop

    nop

    :goto_c9
    const-string v6, "PhenotypeHelper#init"

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_ca
    array-length v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_43

    nop

    nop

    :goto_cc
    const-string v10, "CAM_"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_cd
    new-instance v3, Lqlc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {v2, v3, v5}, Lovy;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_d0
    new-instance v0, Lcom/CameraLensesScan;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d1
    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v7, :cond_11

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_d3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d5484163cd8d335e6b17663474ff5f2bm()Lswg;

    move-result-object v8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    sget v6, Llaf;->a:I

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_d5
    invoke-direct {v3, v2, v4}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_d6
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    move-object/from16 v18, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    sput-object v1, Lqqy;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_da
    new-instance v12, Lsfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_db
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_dc
    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_de
    new-instance v7, Lrby;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_df
    iget-boolean v8, v8, Lsfn;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-direct {v9, v8, v10}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v8, v9, Lsfn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    return-void

    nop

    :goto_e3
    goto/32 :goto_103

    nop

    nop

    :goto_e4
    move v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static {v3}, Lqzk;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_11

    nop

    nop

    :goto_e7
    invoke-direct/range {v17 .. v24}, Lsfx;-><init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    goto/32 :goto_109

    nop

    nop

    :goto_e8
    new-instance v9, Lsfn;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_e9
    new-instance v6, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_ea
    const-string v6, "com.google.android.libraries.snapshot.action.GET_SNAPSHOTTER_INFO"

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_ed
    new-instance v8, Lsfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    new-instance v9, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    aput-object v2, v3, v4

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-static {v6}, Lsfp;->a(Lscn;)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-direct {v4}, Lrcn;-><init>()V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_f3
    const-string v7, "#floggerConfig"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_93

    nop

    nop

    :goto_f6
    const-string v6, "com.google.android.libraries.snapshot.action.CAPTURE_SNAPSHOT"

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_f7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v1, v6}, Lmkp;->h(Ljava/lang/Enum;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-direct {v8}, Lsfn;-><init>()V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-direct {v2, v7}, Lrcg;-><init>(Ljava/util/List;)V

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    sparse-switch v7, :sswitch_data_0

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_fc
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    if-nez v7, :cond_12

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const-wide/16 v6, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iput-object v3, v2, Lqsp;->h:Lqph;

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_100
    goto/16 :goto_3f

    nop

    :sswitch_2
    goto/32 :goto_126

    nop

    nop

    :goto_101
    invoke-static {v3, v6, v7}, Lqzk;->d(Ljava/lang/Runnable;J)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_102
    const-string v10, "CAM_"

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_103
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_105
    sget-object v0, Lmke;->b:Lmke;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_107
    goto :goto_10c

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_d

    nop

    nop

    :goto_109
    iget-object v2, v12, Lsfx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_10a
    if-nez v1, :cond_13

    nop

    goto/32 :goto_12b

    nop

    :cond_13
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    sget-object v1, Lqqy;->b:Ljava/lang/String;

    nop

    nop

    :goto_10c
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    if-nez v6, :cond_14

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    move v6, v5

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    const/16 v4, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_111
    if-nez v3, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    const/16 v26, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-static {v3, v6, v7}, Lqzk;->d(Ljava/lang/Runnable;J)V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_114
    new-instance v3, Lqlc;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_115
    sget-object v6, Lhoa;->d:Lhoa;

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_116
    iget-boolean v9, v2, Lsfx;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_117
    new-instance v2, Landroid/content/IntentFilter;

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_118
    if-eqz v3, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :cond_16
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static {}, Lqqm;->c()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_11a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_11b
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    move-object/from16 v30, v11

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d5484163cd8d335e6b17663474ff5f2bm()Lswg;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_11e
    new-instance v3, Ljib;

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    const-wide/16 v6, 0x1f4

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_120
    if-nez v8, :cond_17

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    move v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    if-nez v7, :cond_18

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_123
    return-void

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v8, v12, Lsfx;->c:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_126
    const-string v7, ":primes_lifeboat"

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_127
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_128
    iget-object v11, v2, Lsfx;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_129
    iput-object v6, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    if-eqz v1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_19
    :goto_12b
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_12d
    rem-int v0, v0, v1

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

    :goto_12e
    invoke-direct {v4}, Lrcl;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    new-instance v4, Lrcl;

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_130
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_132
    check-cast v4, Lqyn;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v3

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_134
    const-wide/16 v6, 0xfa

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_135
    sget-object v1, Lqqy;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_136
    iget-object v15, v8, Lsfx;->e:Ljava/util/Set;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_137
    if-eqz v1, :cond_1a

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    iget-boolean v2, v0, Lqyo;->a:Z

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_139
    sget-object v7, Lhoa;->c:Lhoa;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    new-instance v4, Lrcn;

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    move-object v2, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    sget-object v2, Lqsp;->a:Lqsp;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    new-instance v4, Lrcp;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_13f
    const/16 v4, 0x9

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_140
    sget-object v6, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_141
    new-instance v7, Lrcp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    sget-object v8, Lsfz;->c:Lsfx;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_143
    goto/32 :goto_46

    nop

    :goto_144
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_145
    invoke-static {}, Lcom/a;->aa()V

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_146
    new-instance v2, Lrcg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_147
    invoke-direct {v3, v0}, Ljib;-><init>(Lcom/google/android/apps/camera/legacy/app/app/CameraApp;)V

    goto/32 :goto_b7

    nop

    nop

    :goto_148
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_149
    new-array v7, v3, [Lsfo;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_14a
    goto/16 :goto_3f

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_6c

    nop

    nop

    :goto_14b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_14c
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    if-nez v7, :cond_1b

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-boolean v9, v12, Lsfx;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_150
    goto/32 :goto_7b

    nop

    nop

    nop

    nop
.end method
