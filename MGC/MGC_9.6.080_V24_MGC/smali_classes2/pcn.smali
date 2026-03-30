.class public final Lpcn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_8

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Lfma;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_5

    nop

    :goto_d
    invoke-direct {v2}, Lfma;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lpcn;->b:Ljava/lang/Object;

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

    :goto_f
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x11

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2}, Lobr;-><init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object v0, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    new-instance v0, Lobr;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/CheckedTextView;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/wear/widget/CircularProgressLayout;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lpcn;->a:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpcn;->a:Z

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw v0

    nop
.end method

.method public final declared-synchronized b()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

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

    :goto_5
    throw v0

    nop

    nop

    :array_0
    .array-data 1
        0x6ct
        0x69t
        0x62t
        0x67t
        0x63t
        0x61t
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x75t
        0x70t
        0x2et
        0x73t
        0x6ft
    .end array-data

    .array-data 1
        0x72t
        0x65t
        0x69t
        0x6et
        0x69t
        0x74t
        0x5ft
        0x63t
        0x61t
        0x6dt
        0x5ft
        0x69t
        0x64t
    .end array-data

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

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

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpcn;->a:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    invoke-virtual/range {v0 .. v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    const-string v0, "files/"

    nop

    nop

    nop

    nop

    nop

    const-string v2, ""

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    new-array v2, v2, [B

    nop

    nop

    fill-array-data v2, :array_0

    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_2

    nop

    iget-object v0, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_f

    nop

    :cond_2
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_f
    sget-object v1, Lcom/a;->rp:Ljava/lang/Object;

    nop

    if-eqz v1, :cond_3

    nop

    check-cast v1, Lcom/RamPatcher;

    nop

    nop

    nop

    const-string v2, "b25fcHRoY3Jfa2V5"

    nop

    invoke-static {v2}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v2

    nop

    invoke-virtual {v1, v2}, Lcom/RamPatcher;->setFixSrart(I)V

    iget-object v2, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    invoke-virtual {v1, v2}, Lcom/RamPatcher;->setPathAllHEXEditor(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lpcn;->a:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lflx;Z)V
    .locals 2

    goto/32 :goto_9

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

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_8

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

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpcn;->a:Z

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    iput-boolean v1, p0, Lpcn;->a:Z

    nop

    nop

    nop

    invoke-interface {p1}, Lflx;->e()V

    const/4 p1, 0x0

    nop

    nop

    iput-boolean p1, p0, Lpcn;->a:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :cond_2
    :goto_c
    :try_start_1
    iget-object p2, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Landroid/os/Handler;

    nop

    nop

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x16

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

.method public final d(Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpcn;->b:Ljava/lang/Object;

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
    invoke-virtual {p0}, Leit;->start()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Leit;->stop()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v0, p1, :cond_0

    nop

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

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lpcn;->a:Z

    nop

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lpcn;->a:Z

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

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_a
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Landroidx/wear/widget/CircularProgressLayout;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    check-cast p0, Landroidx/wear/widget/CircularProgressLayout;

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpcn;->b:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/CheckedTextView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/util/AttributeSet;)V
    .locals 12

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-virtual {v0, p1, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    move-object v9, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    const v2, 0x7f040125

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6
    check-cast v0, Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    sget-object v7, Lew;->l:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    goto :goto_a

    nop

    :catch_0
    :cond_0
    :goto_9
    :try_start_1
    invoke-virtual {v0, v3}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p1

    nop

    if-eqz p1, :cond_1

    nop

    nop

    invoke-virtual {v0, v3, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p1

    nop

    nop

    if-eqz p1, :cond_1

    nop

    iget-object v1, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v2, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    check-cast v1, Landroid/widget/CheckedTextView;

    nop

    invoke-virtual {v1, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_a
    const/4 p1, 0x2

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-object v1, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    nop

    invoke-virtual {v0, p1, v1}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p1

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    nop

    nop

    nop

    check-cast p0, Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_b
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_c
    sget-object v1, Lew;->l:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const v10, 0x7f040125

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v9, Landroid/content/res/TypedArray;

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
    invoke-static/range {v5 .. v11}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v4, Landroid/widget/CheckedTextView;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p1, v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1b

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v5, Landroid/view/View;

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

    :goto_18
    move-object v4, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    move-object v5, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    :try_start_2
    iget-object v1, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    check-cast v2, Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v2, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    check-cast v1, Landroid/widget/CheckedTextView;

    nop

    invoke-virtual {v1, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x12

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v8, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

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
.end method
