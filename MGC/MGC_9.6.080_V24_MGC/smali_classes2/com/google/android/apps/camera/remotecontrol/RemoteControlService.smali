.class public Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Ljow;

.field public c:Z

.field public d:I

.field public e:Lhoa;

.field public f:Lltr;

.field public g:Lnyh;

.field public h:Lhoh;

.field private i:Landroid/content/pm/PackageManager;

.field private j:I

.field private k:Ledc;

.field private final l:Landroid/content/ServiceConnection;

.field private final m:Lltp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "com.google.android.apps.camera.remotecontrol.RemoteControlService"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    return-void

    nop

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c:Z

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

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1}, Lrnu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Lltp;-><init>(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_e
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop

    :goto_10
    new-instance v0, Lltp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lrnu;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    :goto_13
    iput-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->g:Lnyh;

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

    :goto_14
    iput-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->m:Lltp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    iput v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->l:Landroid/content/ServiceConnection;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method protected final declared-synchronized a()Lhoa;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e:Lhoa;

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Liye;

    nop

    const-class v1, Lltt;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lltt;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Lltt;->l(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e:Lhoa;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

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

    :goto_6
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
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

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Lltr;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    const v0, 0xe

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

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
    goto/32 :goto_1

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f:Lltr;

    nop

    if-nez v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Liye;

    nop

    nop

    nop

    nop

    nop

    const-class v1, Lltt;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    check-cast v0, Lltt;

    nop

    invoke-interface {v0, p0}, Lltt;->l(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f:Lltr;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(IZ)V
    .locals 20

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x20

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

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    move/from16 v2, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iget-object v1, v1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->k:Ledc;

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

    :goto_8
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    monitor-enter v2

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    nop

    iget-object v3, v1, Ledc;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    nop

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    nop

    and-int/lit8 v3, v3, 0x8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x1

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    move/from16 v16, v9

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_0
    const/16 v16, 0x0

    nop

    nop

    nop

    :goto_b
    if-eqz v16, :cond_1

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    iget-object v3, v1, Ledc;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    move-object v8, v3

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    if-eqz v8, :cond_b

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

    if-eqz v16, :cond_2

    nop

    nop

    nop

    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    move-object v7, v3

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    if-ge v6, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    move-object v5, v3

    nop

    nop

    nop

    check-cast v5, Ledb;

    nop

    nop

    nop

    if-eqz v16, :cond_3

    nop

    nop

    iget-object v3, v5, Ledb;->a:Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    iget-boolean v3, v5, Ledb;->c:Z

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    move/from16 v18, v6

    nop

    nop

    nop

    move-object/from16 v19, v8

    nop

    move-object/from16 p1, v10

    nop

    nop

    nop

    move-object/from16 p2, v11

    nop

    nop

    nop

    move-object v10, v7

    nop

    move v11, v9

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    :cond_4
    iget-object v3, v5, Ledb;->a:Landroid/content/IntentFilter;

    nop

    const-string v17, "LocalBroadcastManager"

    nop

    nop

    nop

    nop

    move-object v4, v10

    nop

    nop

    nop

    move-object v15, v5

    nop

    nop

    move-object v5, v11

    nop

    nop

    nop

    nop

    move/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    move-object v6, v13

    nop

    nop

    nop

    nop

    move-object/from16 p1, v10

    nop

    nop

    move-object v10, v7

    nop

    move-object v7, v12

    nop

    nop

    nop

    move-object/from16 v19, v8

    nop

    nop

    move-object v8, v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p2, v11

    nop

    move v11, v9

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v17

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    if-ltz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_5
    if-nez v10, :cond_6

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move-object v7, v10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, v15, Ledb;->c:Z

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_e
    move-object v7, v10

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v6, v18, 0x1

    nop

    nop

    nop

    move-object/from16 v10, p1

    nop

    nop

    nop

    move v9, v11

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v8, v19

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v11, p2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_8
    move-object v10, v7

    nop

    move v11, v9

    nop

    if-eqz v10, :cond_b

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    if-ge v3, v4, :cond_9

    nop

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ledb;

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    iput-boolean v5, v4, Ledb;->c:Z

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto :goto_10

    nop

    :cond_9
    iget-object v3, v1, Ledc;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    new-instance v4, Leur;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v10}, Leur;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Ledc;->e:Landroid/os/Handler;

    nop

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_a

    nop

    iget-object v0, v1, Ledc;->e:Landroid/os/Handler;

    nop

    nop

    nop

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_b
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "key_value"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_c
    goto/32 :goto_1b

    nop

    :goto_14
    const-string v1, "com.google.android.apps.camera.remotecontrol.remotekey"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iget-object v2, v1, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const v0, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    move/from16 v2, p2

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

    nop

    nop

    :goto_19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    const-string v1, "key_down"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final d(Z)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->g:Lnyh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    :goto_4
    return-void

    nop

    :catch_0
    move-exception p0

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

    :goto_5
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_6
    sget-object p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0xfad

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

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p1

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    invoke-virtual {p0, v0, p1}, Lfum;->B(ILandroid/os/Parcel;)V

    return-void

    nop

    :goto_9
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    invoke-virtual {p0, v0, p1}, Lfum;->B(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "Error when calling into Photos service"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lscz;

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

    :goto_f
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 9

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v4, :cond_0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    const-string v6, "android.permission.CAMERA"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v3

    nop

    :goto_5
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_7
    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->j:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    :goto_c
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v4, v5, :cond_2

    nop

    goto/32 :goto_50

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->j:I

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v2, Lhmq;->bj:Lhmn;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v4, v5}, Lltv;-><init>(Landroid/content/pm/PackageManager;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_16
    goto/16 :goto_26

    nop

    nop

    :goto_17
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    :goto_19
    aget-object v7, v1, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x2

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

    :goto_1d
    return v2

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v5, Lhoa;->a:Lhoa;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    const-string v0, "Failed to verify calling package."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_21
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v0, 0xfb0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v0, 0xfaf

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_27
    sget-object p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v4, Lltv;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v6, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

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

    :goto_30
    return v2

    nop

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v5, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_35
    const-string v7, "android.permission.RECORD_AUDIO"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_36
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_37
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a()Lhoa;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v1, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v4, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3d
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_40
    const-string v0, "Feature not enabled."

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

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

    :goto_42
    if-eq v1, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4, v5}, Lltv;->a(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_44
    array-length v4, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aget-object v5, v1, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x1d

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v5, :cond_8

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4c
    const-string v0, "Failed to get calling package name."

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4d
    aget-object v5, v1, v2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    aget-object v6, v1, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4f
    return v2

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3c

    nop

    nop

    :goto_51
    const/16 v0, 0xfb1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_52
    check-cast p0, Lscz;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v1, :cond_9

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_56

    nop

    nop

    :goto_54
    iget-object v6, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_56
    sget-object p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lsdb;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_57
    iget-object v5, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Lhoh;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v1, :cond_a

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5c
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5d
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

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

    :goto_61
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v4, :cond_c

    nop

    goto/32 :goto_2b

    nop

    :cond_c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method

.method protected final declared-synchronized f()Lhoh;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->h:Lhoh;

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Liye;

    nop

    nop

    nop

    const-class v1, Lltt;

    nop

    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lltt;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Lltt;->l(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->h:Lhoh;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->m:Lltp;

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

    :goto_2
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Lhoh;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->j:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    sget-object v0, Lhmq;->bj:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/high16 p1, -0x80000000

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop
.end method

.method public final onCreate()V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Ljpz;->k:Ljow;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    iput v0, v1, Lltr;->f:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->i:Landroid/content/pm/PackageManager;

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

    nop

    :goto_8
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_9
    const-string v3, "com.google.android.apps.photos.cameraassistant.CameraAssistantService"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->k:Ledc;

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

    :goto_b
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, v1, Lltr;->d:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, v1, Lltr;->a:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Ledc;->a(Landroid/content/Context;)Ledc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->getApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f:Lltr;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iput-wide v2, v1, Lltr;->g:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_19
    iput v0, v1, Lltr;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    iput v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    iput-wide v2, v1, Lltr;->e:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lltr;->c(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ljpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b:Ljow;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    iget-object v2, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->l:Landroid/content/ServiceConnection;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v0, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b()Lltr;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_11

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, "com.google.android.apps.photos"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lltr;->c(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f:Lltr;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1a

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->unbindService(Landroid/content/ServiceConnection;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->l:Landroid/content/ServiceConnection;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method
