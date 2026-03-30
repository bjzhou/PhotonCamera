.class public final Lrnl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected final a:Ljava/util/Set;

.field private final b:Landroid/content/IntentFilter;

.field private final c:Landroid/content/Context;

.field private d:Lrnk;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lrpz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v2, p0, Lrnl;->d:Lrnk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "AppUpdateListenerRegistry"

    nop

    goto/32 :goto_e

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

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_18

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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

    :goto_b
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v1, p0, Lrnl;->e:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljava/util/HashSet;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, p0, Lrnl;->a:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lrnl;->b:Landroid/content/IntentFilter;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Lqrf;->v(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput-object p1, p0, Lrnl;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2}, Lrpz;-><init>(Ljava/lang/String;[B)V

    goto/32 :goto_2

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    :goto_1a
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    iget-object v0, p0, Lrnl;->d:Lrnk;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrnl;->a:Ljava/util/Set;

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

    :goto_4
    const/4 v3, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lrnl;->c:Landroid/content/Context;

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

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lrnl;->d:Lrnk;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

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

    :goto_f
    iget-object v0, p0, Lrnl;->a:Ljava/util/Set;

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

    :goto_10
    if-nez v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lrnk;-><init>(Lrnl;)V

    goto/32 :goto_20

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    :goto_16
    new-instance v0, Lrnk;

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

    :goto_17
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    :goto_1a
    iget-object v2, p0, Lrnl;->b:Landroid/content/IntentFilter;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lrnl;->d:Lrnk;

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

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    :goto_1e
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lrnl;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lrnl;->d:Lrnk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    iget-object v1, p0, Lrnl;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lrne;

    nop

    nop

    nop

    nop

    nop

    iget v2, v2, Lrne;->a:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    if-ne v2, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lrne;

    nop

    iget-wide v2, v2, Lrne;->c:J

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    cmp-long v4, v2, v4

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    check-cast v4, Lrne;

    nop

    nop

    iget-wide v6, v4, Lrne;->b:J

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x64

    nop

    nop

    nop

    nop

    mul-long/2addr v6, v8

    nop

    nop

    div-long/2addr v6, v2

    nop

    nop

    nop

    nop

    nop

    long-to-int v2, v6

    nop

    goto :goto_7

    nop

    :cond_3
    move v2, v5

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v2, :cond_4

    nop

    nop

    nop

    sget-object v3, Lnot;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    const/16 v4, 0x140c

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    const-string v4, "Progress (%d) is less than 0! state=%s"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4, v2, p1}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_8

    nop

    :cond_4
    const/16 v5, 0x64

    nop

    nop

    if-le v2, v5, :cond_5

    nop

    nop

    nop

    nop

    sget-object v3, Lnot;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x140b

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    check-cast v3, Lscz;

    nop

    const-string v4, "Progress (%d) is greater than 100! state=%s"

    nop

    nop

    nop

    invoke-interface {v3, v4, v2, p1}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_8

    nop

    nop

    nop

    :cond_5
    move v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lnot;

    nop

    iget-object v1, v1, Lnot;->b:Lnoo;

    nop

    nop

    nop

    invoke-interface {v1, v5}, Lnoo;->r(I)V

    goto/16 :goto_6

    nop

    nop

    :cond_6
    const/16 v3, 0xb

    nop

    nop

    if-ne v2, v3, :cond_7

    nop

    nop

    iget-object v2, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lnot;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lnot;->d:Lhdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lhdn;->Q(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lnot;

    nop

    iget-object v1, v1, Lnot;->b:Lnoo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lnoo;->q()V

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_7
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_8

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_8
    sget-object v2, Lnot;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    const/16 v3, 0x140a

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    check-cast v3, Lrne;

    nop

    iget v3, v3, Lrne;->d:I

    nop

    nop

    nop

    const-string v4, "Update failed. Error code: %s"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4, v3}, Lscz;->t(Ljava/lang/String;I)V

    iget-object v2, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lnot;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lnot;->d:Lhdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lhdn;->Q(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lnot;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lnot;->b:Lnoo;

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lrne;

    nop

    nop

    nop

    nop

    iget v2, v2, Lrne;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3, v2}, Lnoo;->v(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    nop
.end method

.method public final declared-synchronized b(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lrnl;->a:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lrnl;->da190e616797844b591057d0190e7728m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lrnl;->a:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lrnl;->da190e616797844b591057d0190e7728m()V
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
    throw p1

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method
