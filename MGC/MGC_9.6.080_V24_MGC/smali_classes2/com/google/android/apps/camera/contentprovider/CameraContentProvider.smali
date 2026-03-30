.class public Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;
.super Landroid/content/ContentProvider;
.source "PG"


# instance fields
.field private a:Lhom;

.field private b:Landroid/content/pm/ProviderInfo;

.field private volatile c:Lldz;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()Lldz;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->c:Lldz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_7
    throw v0

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->c:Lldz;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->b:Landroid/content/pm/ProviderInfo;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lhon;

    nop

    nop

    invoke-direct {v1, p0, v0}, Lhon;-><init>(Landroid/content/ContentProvider;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/contentprovider/HasCameraContentProviderComponent;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/contentprovider/HasCameraContentProviderComponent;->cameraContentProviderComponent(Lhon;)Lhok;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lhok;->a()Lmjw;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lmjw;->a()V

    invoke-interface {v0}, Lhok;->b()Lldz;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->c:Lldz;

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lhom;->a(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->a:Lhom;

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

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/SecurityException;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->b:Landroid/content/pm/ProviderInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "version"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x4

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

    :goto_2
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->f875135777c17da3cef2ea6eeff5be29m()Lldz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lldz;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p2, p0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p2}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x5

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    sget-object p2, Lhnh;->a:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

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

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Landroid/os/Bundle;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p2, 0x1

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

    :goto_1f
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

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

    nop

    nop

    nop
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->PrhsYixCeQ:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

.method public final onCreate()Z
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

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

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/util/HashSet;

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

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Lhom;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    iput-object v2, p0, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->a:Lhom;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-interface {v1}, Lcom/google/android/apps/camera/contentprovider/HasCameraContentProviderComponent;->initAppComponent()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Lcom/google/android/apps/camera/contentprovider/HasCameraContentProviderComponent;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_14
    const-string v0, "GCA_CameraContentProvider#onCreate"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x8

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

    :goto_17
    const v3, 0x7f030021

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

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    invoke-direct {v2, v0, v1}, Lhom;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p2, v1, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p2, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

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
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "Cannot load thumbnail for URI= "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_a
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_c
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    :try_start_0
    move-object v4, p2

    nop

    nop

    nop

    check-cast v4, Lidn;

    nop

    iget-object v4, v4, Lidn;->c:Lpdf;

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Bitmap.createScaledBitmap#size="

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v4, v6}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    move-object v8, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    nop

    check-cast v4, Landroid/util/Size;

    nop

    nop

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    if-gt v6, v8, :cond_2

    nop

    nop

    nop

    if-gt v7, v4, :cond_2

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    int-to-float v9, v4

    nop

    nop

    nop

    nop

    nop

    int-to-float v10, v8

    nop

    nop

    div-float/2addr v10, v9

    nop

    nop

    nop

    nop

    int-to-float v9, v7

    nop

    nop

    nop

    int-to-float v11, v6

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v11, v9

    nop

    nop

    nop

    nop

    nop

    cmpl-float v9, v11, v10

    nop

    nop

    nop

    nop

    if-lez v9, :cond_3

    nop

    nop

    nop

    nop

    mul-int/2addr v7, v8

    nop

    nop

    div-int v4, v7, v6

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_3
    mul-int/2addr v6, v4

    nop

    nop

    nop

    nop

    div-int v8, v6, v7

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v8, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    :goto_e
    move-object v4, p2

    nop

    nop

    nop

    nop

    check-cast v4, Lidn;

    nop

    nop

    iget-object v4, v4, Lidn;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V

    :goto_f
    invoke-virtual {v1}, Licm;->a()I

    move-result v1

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lidn;

    nop

    iget-object v4, v4, Lidn;->c:Lpdf;

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Bitmap.rotateBitmap#rotation="

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    invoke-interface {v4, v6}, Lpdf;->f(Ljava/lang/String;)V

    move-object v4, p2

    nop

    nop

    nop

    check-cast v4, Lidn;

    nop

    nop

    nop

    iget-object v4, v4, Lidn;->g:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v6, Lhmq;->bZ:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    check-cast v4, Lidn;

    nop

    iget-object v4, v4, Lidn;->e:Liyt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2, v1}, Liyt;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    invoke-static {v2, v1}, Lnzk;->ai(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    nop

    :goto_10
    move-object v2, v1

    nop

    move-object v1, p2

    nop

    check-cast v1, Lidn;

    nop

    nop

    iget-object v1, v1, Lidn;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p2

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lidn;

    nop

    iget-object v1, v1, Lidn;->c:Lpdf;

    nop

    nop

    nop

    nop

    const-string v4, "BitmapSerializer.serialize"

    nop

    nop

    nop

    nop

    invoke-static {v0, v5, v4}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v1, v4}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lidq; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, p2

    nop

    nop

    nop

    check-cast v1, Lidn;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lidn;->d:Lidp;

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    if-nez v3, :cond_6

    nop

    move-object v1, p2

    nop

    nop

    check-cast v1, Lidn;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lidn;->h:Lidp;

    nop

    :cond_6
    invoke-interface {v1, v2}, Lidl;->a(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v2, p2

    nop

    nop

    check-cast v2, Lidn;

    nop

    nop

    iget-object v2, v2, Lidn;->c:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    new-instance v8, Lidm;

    nop

    nop

    nop

    check-cast p2, Lidn;

    nop

    nop

    nop

    nop

    invoke-direct {v8, p2, v0, v1}, Lidm;-><init>(Lidn;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    iget-object p0, p0, Lldz;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    const-string v5, ""

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    nop

    nop

    nop

    const-string v7, ""

    nop

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    check-cast v3, Landroid/content/ContentProvider;

    nop

    nop

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Lidq; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    const-string v1, "r"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p2, "Unrecognized format: "

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p2, v1, :cond_7

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_7
    :try_start_3
    iget-object p2, p0, Lldz;->e:Ljava/lang/Object;

    nop

    sget v1, Lidn;->b:I

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    sput v1, Lidn;->b:I

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[m"

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->dSw:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    const-string v4, "width"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const-string v5, "height"

    nop

    nop

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    if-eqz v5, :cond_8

    nop

    new-instance v3, Landroid/util/Size;

    nop

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    :cond_8
    move-object v4, p2

    nop

    nop

    nop

    check-cast v4, Lidn;

    nop

    iget-object v4, v4, Lidn;->f:Lico;

    nop

    nop

    invoke-virtual {v4, v1, v2}, Lico;->a(J)Lrss;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Licm;

    nop

    nop

    nop

    invoke-virtual {v1}, Licm;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    if-eqz v2, :cond_d

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_c

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Lidq; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->a()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    new-instance p2, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3a

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p2, "Unsupported mode: "

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    const/4 v1, 0x3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_3a

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

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_20
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->f875135777c17da3cef2ea6eeff5be29m()Lldz;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    const-string v5, "CAM_ProcessingMedia"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "GCA_SpecialTypes#openFile"

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_9
    goto/32 :goto_4

    nop

    :goto_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    check-cast p2, Landroid/content/UriMatcher;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    const-string p1, " ex="

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const p2, 0x7f0706d8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p2, p0, Lldz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_33
    invoke-virtual {p0, p1, p2}, Lldz;->i(Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v1, 0x8

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const p2, 0x7f0706da

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_39
    invoke-virtual {p0, p1, p2}, Lldz;->i(Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne p2, v1, :cond_b

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, p1, p2}, Lldz;->i(Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3e
    goto :goto_3f

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_4
    new-instance v0, Lidq;

    nop

    nop

    invoke-direct {v0, p0}, Lidq;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3f
    :try_start_5
    check-cast p2, Lidn;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lidn;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {p2}, Lpdf;->g()V

    throw p0

    nop

    nop

    :cond_c
    sget-object p0, Lidn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 p2, 0x572

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string p2, "%s thumbnail bitmap has been recycled"

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Thumbnail bitmap has been recycled"

    nop

    nop

    nop

    nop

    nop

    new-instance p2, Lidq;

    nop

    invoke-direct {p2, p0}, Lidq;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    nop

    nop

    nop

    :cond_d
    sget-object p0, Lidn;->a:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 p2, 0x573

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string p2, "%s thumbnail bitmap is not set in ProcessingMedia"

    nop

    invoke-interface {p0, p2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Thumbnail bitmap is not set in ProcessingMedia"

    nop

    nop

    nop

    nop

    new-instance p2, Lidq;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0}, Lidq;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :cond_e
    sget-object p0, Lidn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 p2, 0x574

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string p2, "%s ProcessingMedia does not exist in ProcessingMediaManager"

    nop

    invoke-interface {p0, p2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "ProcessingMedia does not exist in ProcessingMediaManager"

    nop

    nop

    new-instance p2, Lidq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0}, Lidq;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    nop
    :try_end_5
    .catch Lidq; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_40
    throw p2

    nop

    :goto_41
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_42
    if-ne p2, v1, :cond_f

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lidq;->getMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_3a

    nop

    :goto_4a
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4b
    const-string v0, "[r"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4c
    const p2, 0x7f0706d7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p4, p5, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    packed-switch p4, :pswitch_data_0

    goto/32 :goto_24

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_21

    nop

    nop

    :goto_2
    iget-object p3, p0, Lldz;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-object p3, p3, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p4, "SpecialTypesQuery"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    check-cast p3, Lhwy;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    const-string p2, "Unrecognized uri: "

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_26

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p4, Landroid/content/UriMatcher;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    const/4 p5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    invoke-interface {p3, p4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p3, p3, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    return-object p1

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_16
    const/4 p5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    sget-object p3, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->luALXeBbGtfACf:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_13

    nop

    :pswitch_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p3, p1, p2}, Licu;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->f875135777c17da3cef2ea6eeff5be29m()Lldz;

    move-result-object p0

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

    :goto_1b
    iget-object p4, p3, Lhwy;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p4, p5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_13

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p3, p0, Lldz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p3, p3, Lhwy;->e:Ljava/lang/Object;

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

    :goto_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/apps/camera/contentprovider/CameraContentProvider;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lldz;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    :goto_26
    iget-object p3, p3, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->kYHvS:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method
