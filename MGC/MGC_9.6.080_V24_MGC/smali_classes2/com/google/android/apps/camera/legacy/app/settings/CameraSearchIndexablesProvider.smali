.class public Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Z

.field private c:Lkpg;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Ljava/lang/String;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

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

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object p0

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

.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()Lkpg;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->b:Z

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v2, "accessibility"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->b:Z

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->c:Lkpg;

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_0
    if-eq v0, v1, :cond_1

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    check-cast v0, Ljjk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljjk;->e()Ljip;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lfdo;

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v3}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {v0, v1}, Ljip;->t(Lfdo;)Lleu;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lleu;->c()Lkpg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->c:Lkpg;

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lkpg;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->c:Lkpg;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_3

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "com.google.android.apps.camera.legacy.app.settings.CameraSearchIndexablesProvider"

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

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->a:Lsdb;

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    nop

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p2, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    array-length v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    const v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const-string p2, "com.android.settings.action.EXTRA_SETTINGS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    aput-object p1, v0, p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    aput-object p3, v0, v1

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

    :goto_a
    const p1, 0x7f080275

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    const-class p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    aput-object p0, v0, p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput-object p0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    aput-object p1, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p1, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p1, 0xa

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    const/16 p1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    aput-object p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->166277962e993c138a6b1f0c9b571cc0m()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    aput-object p2, v0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCreate()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_3
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lscz;

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

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    sget-object p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const-string v0, "Called onCreate"

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

    :goto_8
    const/16 v0, 0x9a8

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_4
    new-instance p1, Landroid/database/MatrixCursor;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    check-cast p1, Lscz;

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

    :goto_b
    sget-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->33f5b80483094659737b73d90f80a8a4m()Lkpg;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_e
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    const/16 v0, 0x9a3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "Called queryNonIndexableKeys"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xb

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lkpg;->m:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    array-length v1, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aput-object v0, v1, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p1}, Lruv;-><init>(Lruw;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object v1, p1, Lruw;->c:Ljava/util/Collection;

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2c

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->a:Lsdb;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_9
    check-cast p1, Lscz;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    iget-object v1, p1, Lruw;->c:Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Landroid/preference/Preference;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2d

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    const v0, 0x7f14006e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x13

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->33f5b80483094659737b73d90f80a8a4m()Lkpg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v2, 0x7f1403dc

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    const-string v2, "camera_settings"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Called queryRawData"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p1, Lkpg;->f:Ljava/lang/Object;

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

    :goto_24
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    goto/32 :goto_2f

    nop

    nop

    :goto_26
    new-instance v1, Lruv;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

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

    :goto_2a
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_2d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x9a5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    new-instance v0, Landroid/database/MatrixCursor;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_33
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_35
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_36
    check-cast p1, Lruw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput-object p0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->166277962e993c138a6b1f0c9b571cc0m()Ljava/lang/String;

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

    :goto_3
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_7
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-array v0, v0, [Ljava/lang/Object;

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

    :goto_9
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v2, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Called queryXmlResources"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0x9a7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    aput-object p0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    const-class p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "android.intent.action.MAIN"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v2, 0x7f180000

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/settings/CameraSearchIndexablesProvider;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Landroid/database/MatrixCursor;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    aput-object v2, v0, v3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v0, v0

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

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    aput-object v2, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    :goto_23
    return-object p1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    :goto_25
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    aput-object v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method
