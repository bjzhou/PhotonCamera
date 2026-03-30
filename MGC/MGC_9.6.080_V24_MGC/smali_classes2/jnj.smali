.class public Ljnj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqe;


# static fields
.field private static final c:Lsdb;


# instance fields
.field public final a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/io/File;

.field private final f:Ljava/util/concurrent/Semaphore;

.field private volatile g:Z

.field private final h:Ljava/util/List;

.field private final i:I

.field private final j:Lidi;

.field private final k:Lico;

.field private final l:Lmjv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v1, 0x6

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

    :goto_4
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_0

    nop

    nop

    :goto_7
    const-string v0, "jnj"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    aput-object v0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v4, 0x0

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    sput-object v0, Ljnj;->c:Lsdb;

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

    :goto_c
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    const/4 v1, 0x1

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    goto/32 :goto_6

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
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v3, 0x1f8

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

    :goto_13
    new-array v1, v1, [Ljava/lang/Object;

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

.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lmjv;Lidi;Lico;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Llxj;->a()Ljava/io/File;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    iput-boolean v1, p0, Ljnj;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Ljnj;->d:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Ljnj;->h:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    iget-object p2, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iget-object v0, p2, Llwr;->d:Llxj;

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

    :goto_f
    iput-object p2, p0, Ljnj;->l:Lmjv;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Ljnj;->f:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iput-object p4, p0, Ljnj;->k:Lico;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_15
    iput-object v0, p0, Ljnj;->e:Ljava/io/File;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    iput p1, p0, Ljnj;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Llwf;->u()Ljava/lang/String;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    iput-object p3, p0, Ljnj;->j:Lidi;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_20
    iget-object p2, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    iget p1, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->j:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    const v1, 0x1f

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Llqd;
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
    iget-object p0, p0, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

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

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

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

.method public final b()Ljava/lang/String;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "LightCycleStitchTask-"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Llwf;->j()Llxm;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpbz;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljnj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/content/Context;)V
    .locals 20

    goto/32 :goto_5b

    nop

    nop

    :goto_0
    if-eq v13, v2, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    move-object v1, v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1}, Lexp;->getLocalizedMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v3, v1, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llwf;->C()V

    iget-object v3, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llwf;->I()V

    iget-object v3, v1, Ljnj;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {v3}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v3

    nop

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lpbz;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v1}, Lpbz;->a(Ljava/lang/Object;)V

    goto :goto_3

    nop

    nop

    nop

    :cond_1
    monitor-exit v2

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_44

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v9}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto/32 :goto_c

    nop

    nop

    :goto_7
    move-object v8, v9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_4
    const-string v11, "cropped_area_width"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    check-cast v11, Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v12, "full_pano_width"

    nop

    nop

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_4
    :goto_d
    :try_start_6
    sget v2, Lpuf;->a:I

    nop

    nop

    nop

    nop

    sget-object v2, Lexs;->a:Lts;

    nop

    nop

    new-instance v2, Leye;

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Leye;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :catch_0
    :goto_f
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1e

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-gtz v14, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_7
    aget-object v12, v12, v3

    nop

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v1, p0

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

    :goto_14
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    goto :goto_f

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_7
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lexp; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v3, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw v2

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1a
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v13, v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    :try_start_9
    new-instance v14, Landroid/media/ExifInterface;

    nop

    nop

    invoke-direct {v14, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_8

    nop

    nop

    new-instance v15, Landroid/media/ExifInterface;

    nop

    nop

    nop

    nop

    invoke-direct {v15, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v12, "Make"

    nop

    invoke-virtual {v15, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    const-string v15, "Make"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v15, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    nop

    :cond_8
    const-string v12, "Make"

    nop

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v12, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    nop

    invoke-static {v10, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v15, "ImageWidth"

    nop

    nop

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v15, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ImageLength"

    nop

    nop

    nop

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    nop

    invoke-virtual {v14, v3, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    nop

    new-instance v12, Ljava/util/Date;

    nop

    nop

    nop

    nop

    invoke-direct {v12, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v15, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    nop

    nop

    nop

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    invoke-direct {v15, v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v15, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v15, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v6, v7}, Lpuq;->bI(J)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-"

    nop

    const-string v15, "+"

    nop

    nop

    nop

    nop

    if-gez v3, :cond_9

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    :cond_9
    move-object v12, v15

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v10, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_a
    new-instance v14, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    nop

    nop

    nop

    if-nez v14, :cond_b

    nop

    nop

    nop

    goto/16 :goto_3d

    nop

    :cond_b
    new-instance v14, Ljava/io/File;

    nop

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljnz;

    nop

    nop

    nop

    nop

    invoke-direct {v12}, Ljnz;-><init>()V

    invoke-virtual {v14, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    array-length v14, v12

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x1

    nop

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljnj;->h()V

    sget-object v4, Ljmp;->a:Ljava/lang/Object;

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateNewStitchingSession()I

    move-result v4

    nop

    nop

    nop

    iget-object v5, v1, Ljnj;->e:Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Lpcj;->b:Lpcj;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Llwf;->c(Lpcj;)V

    new-instance v8, Ljni;

    nop

    invoke-direct {v8, v1, v6, v7, v5}, Ljni;-><init>(Ljnj;JLjava/io/File;)V

    sget-object v5, Ljmp;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->RenderNextSession(I)Z

    iget-object v4, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    sget v7, Ljoa;->a:I

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

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

    :goto_26
    goto/16 :goto_5e

    nop

    :goto_27
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v1, v0

    nop

    nop

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw v2

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lexp; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw v1

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2c
    throw v1

    nop

    :goto_2d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v1, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2f
    iget-object v2, v1, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    move-object v1, v0

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw v2

    nop

    nop
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lexp; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_2
    move-exception v0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_32
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    int-to-long v12, v6

    nop

    nop

    nop

    nop

    :try_start_f
    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v16

    nop

    nop

    nop

    invoke-static/range {v16 .. v17}, Lpuq;->bJ(J)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    nop

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v16, 0x3c

    nop

    nop

    nop

    rem-long v12, v12, v16

    nop

    invoke-static {v12, v13}, Lpuq;->bJ(J)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v6, "DateTime"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DateTimeOriginal"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DateTimeDigitized"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SubSecTime"

    nop

    nop

    nop

    invoke-virtual {v14, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SubSecTimeOriginal"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SubSecTimeDigitized"

    nop

    invoke-virtual {v14, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OffsetTime"

    nop

    nop

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OffsetTimeOriginal"

    nop

    nop

    nop

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OffsetTimeDigitized"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Model"

    nop

    nop

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_17

    nop

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    const/4 v3, 0x0

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    if-eqz v12, :cond_11

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    check-cast v12, Ljava/util/Map$Entry;

    nop

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Ljava/lang/String;

    nop

    nop

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    const-string v2, "location_altitude"

    nop

    nop

    nop

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    invoke-static {v12}, Ljoa;->a(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v3

    nop

    :cond_c
    :goto_35
    move-object/from16 v2, v16

    nop

    nop

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    :cond_d
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v13, "location_latitude"

    nop

    nop

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    invoke-static {v12}, Ljoa;->a(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto :goto_35

    nop

    :cond_e
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    const-string v13, "location_longitude"

    nop

    nop

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljoa;->a(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto :goto_35

    nop

    nop

    nop

    nop

    :cond_f
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    const-string v13, "location_provider"

    nop

    nop

    nop

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_10

    nop

    nop

    nop

    nop

    const-string v2, "GPSProcessingMethod"

    nop

    nop

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    check-cast v12, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    nop

    nop

    nop

    :cond_10
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    const-string v13, "location_time"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    invoke-static {v12}, Ljoa;->e(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/16 :goto_35

    nop

    :cond_11
    const-wide/16 v12, 0x0

    nop

    if-eqz v3, :cond_13

    nop

    nop

    const-string v2, "GPSAltitudeRef"

    nop

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    nop

    nop

    nop

    nop

    nop

    cmpg-double v3, v16, v12

    nop

    nop

    if-gez v3, :cond_12

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    sget-object v3, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->mzyCUDiUrKNZqm:Ljava/lang/String;

    nop

    nop

    goto :goto_36

    nop

    :cond_12
    const-string v3, "0"

    nop

    :goto_36
    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v6, :cond_16

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_16

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljoa;->c(D)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    nop

    nop

    nop

    cmpl-double v3, v16, v12

    nop

    nop

    nop

    nop

    if-ltz v3, :cond_14

    nop

    nop

    nop

    nop

    const-string v3, "N"

    nop

    nop

    nop

    goto :goto_37

    nop

    nop

    :cond_14
    const-string v3, "S"

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    nop

    invoke-static/range {v16 .. v17}, Ljoa;->c(D)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    nop

    nop

    cmpl-double v7, v16, v12

    nop

    if-ltz v7, :cond_15

    nop

    nop

    nop

    nop

    nop

    const-string v7, "E"

    nop

    goto :goto_38

    nop

    nop

    nop

    nop

    :cond_15
    const-string v7, "W"

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v2, :cond_16

    nop

    if-eqz v6, :cond_16

    nop

    nop

    nop

    nop

    const-string v12, "GPSLatitude"

    nop

    invoke-virtual {v14, v12, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GPSLatitudeRef"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GPSLongitude"

    nop

    invoke-virtual {v14, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GPSLongitudeRef"

    nop

    nop

    nop

    invoke-virtual {v14, v2, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v8, :cond_17

    nop

    nop

    const-string v2, "UTC"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "yyyy:MM:dd"

    nop

    nop

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v6, "GPSDateStamp"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-virtual {v14, v6, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "HH:mm:ss"

    nop

    nop

    nop

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v2, "GPSTimeStamp"

    nop

    nop

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_29

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v2, v0

    nop

    nop

    nop

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    goto/32 :goto_70

    nop

    :goto_3f
    move-object v1, v0

    nop

    nop

    :try_start_11
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/32 :goto_2c

    nop

    nop

    :goto_40
    const/4 v4, 0x0

    nop

    nop

    nop

    :catch_3
    :goto_41
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_72

    nop

    nop

    nop

    :catch_4
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    :try_start_12
    new-instance v9, Ljava/io/BufferedReader;

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/io/InputStreamReader;

    nop

    nop

    new-instance v11, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_18
    :goto_44
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    if-eqz v10, :cond_2

    nop

    nop

    nop

    nop

    nop

    const-string v11, ","

    nop

    nop

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    array-length v11, v10

    nop

    if-ne v11, v7, :cond_18

    nop

    nop

    nop

    nop

    aget-object v11, v10, v3

    nop

    nop

    nop

    nop

    nop

    aget-object v10, v10, v2

    nop

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_45
    goto :goto_41

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_47
    move v15, v13

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x0

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

    nop

    :goto_49
    monitor-enter v3

    nop

    :try_start_14
    iget-object v4, v1, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    invoke-virtual {v4}, Llwf;->C()V

    iget-object v4, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Llwf;->I()V

    iget-object v4, v1, Ljnj;->h:Ljava/util/List;

    nop

    nop

    invoke-static {v4}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v4

    nop

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_19

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lpbz;

    nop

    invoke-interface {v5, v1}, Lpbz;->a(Ljava/lang/Object;)V

    goto :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_19
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4b
    iget-object v3, v1, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4c
    move-object v1, v0

    nop

    :try_start_15
    const-string v2, "XmpUtil"

    nop

    nop

    const-string v3, "Could not read file: "

    nop

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    const-string v2, "XmpUtil"

    nop

    nop

    nop

    const-string v3, "Could not find file: "

    nop

    nop

    nop

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Lexp; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v9, :cond_1a

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :try_start_16
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catch_6
    :goto_4e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    mul-float v10, v11, v9

    nop

    nop

    nop

    nop

    :catch_7
    :goto_50
    :try_start_17
    iget v11, v1, Ljnj;->i:I

    nop

    if-ne v11, v7, :cond_1c

    nop

    nop

    nop

    nop

    cmpl-float v9, v10, v9

    nop

    if-nez v9, :cond_1b

    nop

    nop

    nop

    move v9, v2

    nop

    goto :goto_51

    nop

    :cond_1b
    move v9, v3

    nop

    nop

    nop

    nop

    :goto_51
    move v11, v7

    nop

    nop

    nop

    nop

    goto :goto_52

    nop

    nop

    :cond_1c
    move v9, v3

    nop

    nop

    nop

    nop

    :goto_52
    if-ne v11, v2, :cond_1d

    nop

    nop

    const/high16 v11, 0x428c0000    # 70.0f

    nop

    nop

    nop

    cmpl-float v11, v10, v11

    nop

    nop

    nop

    nop

    nop

    if-gez v11, :cond_1e

    nop

    :cond_1d
    if-eqz v9, :cond_1f

    nop

    :cond_1e
    move v11, v2

    nop

    nop

    nop

    goto :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    move v11, v3

    nop

    nop

    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    sub-long/2addr v12, v5

    nop

    sget-object v5, Lsob;->d:Lsob;

    nop

    iget v6, v1, Ljnj;->i:I

    nop

    nop

    if-ne v6, v7, :cond_20

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lsob;->j:Lsob;

    nop

    move v14, v7

    nop

    nop

    nop

    nop

    goto :goto_55

    nop

    nop

    nop

    nop

    :cond_20
    const/4 v14, 0x3

    nop

    nop

    if-ne v6, v14, :cond_21

    nop

    nop

    nop

    :goto_54
    sget-object v5, Lsob;->j:Lsob;

    nop

    nop

    nop

    goto :goto_55

    nop

    nop

    nop

    nop

    :cond_21
    const/4 v14, 0x5

    nop

    nop

    nop

    nop

    if-ne v6, v14, :cond_22

    nop

    nop

    nop

    nop

    goto :goto_54

    nop

    :cond_22
    const/4 v14, 0x4

    nop

    if-ne v6, v14, :cond_23

    nop

    goto :goto_54

    nop

    nop

    nop

    :cond_23
    move v14, v2

    nop

    :goto_55
    iget-object v6, v1, Ljnj;->l:Lmjv;

    nop

    nop

    nop

    nop

    nop

    long-to-float v12, v12

    nop

    nop

    nop

    nop

    new-instance v13, Llcm;

    nop

    invoke-direct {v13, v5, v3}, Llcm;-><init>(Lsob;Z)V

    const/high16 v15, 0x3f800000    # 1.0f

    nop

    invoke-virtual {v13, v15}, Llcm;->m(F)V

    const v15, 0x3a83126f    # 0.001f

    nop

    mul-float/2addr v12, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v12}, Llcm;->k(F)V

    sget-object v12, Lsob;->j:Lsob;

    nop

    nop

    nop

    nop

    if-ne v5, v12, :cond_28

    nop

    sget-object v5, Lsom;->a:Lsom;

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    if-nez v12, :cond_24

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_24
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v15, v12

    nop

    nop

    check-cast v15, Lsom;

    nop

    nop

    nop

    add-int/lit8 v14, v14, -0x1

    nop

    iput v14, v15, Lsom;->c:I

    nop

    nop

    iget v14, v15, Lsom;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v14, v2

    nop

    iput v14, v15, Lsom;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-nez v12, :cond_25

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_25
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    check-cast v12, Lsom;

    nop

    nop

    nop

    nop

    nop

    iget v14, v12, Lsom;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v7, v14

    nop

    nop

    iput v7, v12, Lsom;->b:I

    nop

    nop

    iput v10, v12, Lsom;->d:F

    nop

    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lsom;

    nop

    nop

    nop

    nop

    if-nez v5, :cond_26

    nop

    nop

    nop

    nop

    goto :goto_56

    nop

    nop

    nop

    :cond_26
    iget-object v7, v13, Llcm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v10, v7

    nop

    nop

    nop

    nop

    check-cast v10, Ltkb;

    nop

    nop

    nop

    iget-object v10, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    if-nez v10, :cond_27

    nop

    nop

    move-object v10, v7

    nop

    nop

    nop

    nop

    check-cast v10, Ltkb;

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_27
    check-cast v7, Ltkb;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lskm;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lskm;->a:Lskm;

    nop

    nop

    nop

    nop

    iput-object v5, v7, Lskm;->r:Lsom;

    nop

    nop

    nop

    nop

    iget v5, v7, Lskm;->b:I

    nop

    nop

    nop

    const/high16 v10, 0x10000

    nop

    nop

    nop

    nop

    or-int/2addr v5, v10

    nop

    nop

    nop

    nop

    nop

    iput v5, v7, Lskm;->b:I

    nop

    nop

    nop

    nop

    :cond_28
    :goto_56
    invoke-virtual {v6, v13}, Lmjv;->M(Llcm;)V

    iget v5, v1, Ljnj;->i:I

    nop

    if-eq v5, v2, :cond_2a

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_29

    nop

    nop

    nop

    goto :goto_57

    nop

    :cond_29
    move v5, v3

    nop

    nop

    goto :goto_58

    nop

    nop

    nop

    :cond_2a
    :goto_57
    move v5, v2

    nop

    nop

    :goto_58
    iget-object v6, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    iget-object v6, v6, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Llwf;->j()Llxm;

    move-result-object v6

    nop

    nop

    nop

    iget-object v7, v1, Ljnj;->k:Lico;

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Lico;->b(Llxm;)Lrss;

    move-result-object v7

    nop

    nop

    nop

    sget-object v9, Lrsa;->a:Lrsa;

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v10

    nop

    if-eqz v10, :cond_2c

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Licm;

    nop

    nop

    nop

    iget-object v6, v6, Licm;->a:Llxh;

    nop

    nop

    iget-wide v6, v6, Llxh;->a:J

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v1, Ljnj;->j:Lidi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v6, v7}, Lidi;->a(J)Lrss;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lrss;->h()Z

    move-result v12

    nop

    if-eqz v12, :cond_2b

    nop

    nop

    invoke-virtual {v10}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lidb;

    nop

    nop

    nop

    invoke-virtual {v6}, Lidb;->f()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto :goto_59

    nop

    nop

    nop

    nop

    :cond_2b
    sget-object v10, Ljnj;->c:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lscs;->b()Lsdo;

    move-result-object v10

    nop

    const/16 v12, 0x9cf

    nop

    nop

    nop

    nop

    invoke-interface {v10, v12}, Lscz;->M(I)Lsdo;

    move-result-object v10

    nop

    nop

    check-cast v10, Lscz;

    nop

    nop

    nop

    nop

    const-string v12, "special type not found for mediastore id = %d"

    nop

    invoke-interface {v10, v12, v6, v7}, Lscz;->u(Ljava/lang/String;J)V

    goto :goto_59

    nop

    nop

    :cond_2c
    sget-object v7, Ljnj;->c:Lsdb;

    nop

    nop

    invoke-virtual {v7}, Lscs;->b()Lsdo;

    move-result-object v7

    nop

    const/16 v10, 0x9ce

    nop

    nop

    invoke-interface {v7, v10}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Lscz;

    nop

    nop

    nop

    nop

    const-string v10, "no processing media found for shot %s"

    nop

    invoke-interface {v7, v10, v6}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_59
    iget-object v6, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Llwf;->e()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    iget-object v10, v1, Ljnj;->e:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    nop

    iget-object v12, v1, Ljnj;->d:Ljava/lang/String;

    nop

    nop

    nop

    iget v13, v1, Ljnj;->i:I

    nop

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto/32 :goto_0

    nop

    nop

    :goto_5a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_5b
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_5c
    int-to-float v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5d
    move v13, v3

    nop

    nop

    :goto_5e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v8, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_2d
    :try_start_18
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :catch_8
    :goto_60
    :try_start_19
    throw v3

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :catch_9
    goto/32 :goto_6b

    nop

    nop

    :goto_61
    if-nez v5, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_2e
    :try_start_1a
    const-string v3, "UsePanoramaViewer"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3, v11}, Lexq;->m(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    nop

    nop

    nop

    sget-object v3, Landroidx/wear/widget/xrA/fuyPMnCeXU;->tgtRV:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    move v5, v15

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3, v5}, Lexq;->m(Ljava/lang/String;Z)V

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    nop

    nop

    nop

    nop

    nop

    const-string v5, "ProjectionType"

    nop

    nop

    nop

    const-string v6, "equirectangular"

    nop

    nop

    nop

    invoke-interface {v2, v3, v5, v6}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_41

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    const/4 v14, 0x0

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x0

    nop

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    nop

    nop

    nop

    nop

    nop

    if-eqz v17, :cond_3a

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    check-cast v17, Ljava/util/Map$Entry;

    nop

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    move-object/from16 v19, v3

    nop

    nop

    nop

    nop

    move-object/from16 v3, v18

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v1, "full_pano_width"

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_30

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    :cond_2f
    :goto_63
    move-object/from16 v1, p0

    nop

    nop

    nop

    move-object/from16 v3, v19

    nop

    nop

    goto :goto_62

    nop

    nop

    nop

    nop

    :cond_30
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    const-string v3, "full_pano_height"

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_31

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto :goto_63

    nop

    :cond_31
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v3, "cropped_area_width"

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_32

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto :goto_63

    nop

    nop

    :cond_32
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    const-string v3, "cropped_area_height"

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_33

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto :goto_63

    nop

    nop

    :cond_33
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    const-string v3, "cropped_area_top"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_34

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    :cond_34
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    const-string v3, "cropped_area_left"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_35

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    :cond_35
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "first_photo_time"

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_36

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->e(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v12

    nop

    goto/16 :goto_63

    nop

    :cond_36
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    const-string v3, "last_photo_time"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_37

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->e(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :cond_37
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    const-string v3, "source_photos_count"

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_38

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    nop

    nop

    :cond_38
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "pose_heading"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_39

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :cond_39
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "yaw_correction_deg"

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_2f

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljoa;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v16

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :cond_3a
    if-eqz v4, :cond_3b

    nop

    nop

    nop

    if-eqz v5, :cond_3b

    nop

    nop

    nop

    nop

    nop

    const-string v1, "CroppedAreaImageHeightPixels"

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    const-string v1, "CroppedAreaImageWidthPixels"

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    :cond_3b
    if-eqz v6, :cond_3c

    nop

    nop

    nop

    if-eqz v7, :cond_3c

    nop

    nop

    nop

    nop

    const-string v1, "FullPanoHeightPixels"

    nop

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    const-string v1, "FullPanoWidthPixels"

    nop

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    :cond_3c
    if-eqz v8, :cond_3d

    nop

    if-eqz v11, :cond_3d

    nop

    nop

    const-string v1, "CroppedAreaTopPixels"

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    const-string v1, "CroppedAreaLeftPixels"

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    :cond_3d
    if-eqz v12, :cond_3e

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lexy;

    nop

    nop

    nop

    nop

    const-string v3, "GMT"

    nop

    nop

    nop

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    nop

    invoke-direct {v1, v12, v3}, Lexy;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    nop

    nop

    nop

    nop

    nop

    const-string v4, "FirstPhotoDate"

    nop

    nop

    invoke-interface {v2, v3, v4, v1}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    if-eqz v13, :cond_3f

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lexy;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "GMT"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v13, v3}, Lexy;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    nop

    nop

    nop

    const-string v4, "LastPhotoDate"

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4, v1, v5}, Leye;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Leyr;)V

    :cond_3f
    if-eqz v14, :cond_40

    nop

    const-string v1, "SourcePhotosCount"

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1, v3}, Lexq;->n(Ljava/lang/String;I)V

    :cond_40
    if-eqz v15, :cond_41

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_41

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    add-int/lit16 v1, v1, 0x2d0

    nop

    nop

    nop

    nop

    rem-int/lit16 v1, v1, 0x168

    nop

    nop

    nop

    nop

    int-to-double v3, v1

    nop

    nop

    nop

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    nop

    nop

    nop

    nop

    nop

    const-string v5, "PoseHeadingDegrees"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1, v5, v3, v4}, Leye;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Leyr;)V

    :cond_41
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    nop

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    invoke-static {v10, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    const-string v4, "LargestValidInteriorRectLeft"

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4, v5}, Lexq;->n(Ljava/lang/String;I)V

    const-string v4, "LargestValidInteriorRectTop"

    nop

    invoke-interface {v2, v4, v5}, Lexq;->n(Ljava/lang/String;I)V

    const-string v4, "LargestValidInteriorRectWidth"

    nop

    invoke-interface {v2, v4, v3}, Lexq;->n(Ljava/lang/String;I)V

    const/4 v3, 0x0

    nop

    sget-object v3, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->vAqrT:Ljava/lang/String;

    nop

    nop

    invoke-interface {v2, v3, v1}, Lexq;->n(Ljava/lang/String;I)V

    :goto_64
    invoke-virtual {v9}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_42

    nop

    invoke-virtual {v9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, Lpuf;->q(Lexq;Ljava/lang/String;)V

    :cond_42
    invoke-static {v10}, Lpuf;->k(Ljava/lang/String;)Z

    move-result v1

    nop

    nop
    :try_end_1a
    .catch Lexp; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/high16 v9, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_66
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_67
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_68
    :try_start_1b
    invoke-static {v3, v2}, Lpuf;->a(Ljava/util/List;[B)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Lexp; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :try_start_1d
    new-instance v1, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Lexp; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :try_start_1e
    invoke-static {v1, v3}, Lpuf;->i(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Lexp; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_69
    div-float/2addr v11, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v9, 0x0

    nop

    :catch_a
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_f

    nop

    nop

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6d
    if-lez v0, :cond_43

    nop

    goto/32 :goto_70

    nop

    :cond_43
    goto/32 :goto_6f

    nop

    :goto_6e
    if-nez v1, :cond_44

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_44
    :try_start_20
    new-instance v1, Ljava/io/FileInputStream;

    nop

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_5
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Lexp; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :try_start_21
    new-instance v3, Lpuc;

    nop

    invoke-direct {v3, v1}, Lpuc;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    nop

    invoke-static {v3, v4, v4}, Lpuf;->h(Lpue;ZZ)Ljava/util/List;

    move-result-object v3

    nop

    invoke-static {v2}, Lpuf;->l(Lexq;)[B

    move-result-object v2

    nop
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_71
    move v15, v13

    nop

    nop

    nop

    :catch_b
    :goto_72
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpbz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljnj;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Ljnj;->g:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljnj;->f:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljnj;->f:Ljava/util/concurrent/Semaphore;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Ljnj;->g:Z

    nop

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

    :goto_2
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 3

    goto/32 :goto_10

    nop

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

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

    :goto_3
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    :try_start_0
    iget-object p0, p0, Ljnj;->f:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    iget-boolean v0, p0, Ljnj;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ljnj;->c:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x9d0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Failed to acquire waitLock."

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

    :goto_10
    const v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
