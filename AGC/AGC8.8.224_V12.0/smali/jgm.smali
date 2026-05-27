.class public abstract Ljgm;
.super Ljgb;

# interfaces
.implements Ljcz;


# static fields
.field private static volatile a:Ljava/util/concurrent/Executor;


# instance fields
.field public final s:Ljava/util/Set;

.field private final t:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILjge;Ljei;Ljff;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p4

    sget-object v1, Ljgo;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Ljgo;->h:Ljgo;

    if-nez v2, :cond_0

    new-instance v2, Ljgo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljgo;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Ljgo;->h:Ljgo;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Ljgo;->h:Ljgo;

    sget-object v5, Ljcd;->a:Ljcd;

    invoke-static/range {p5 .. p5}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static/range {p6 .. p6}, Ljhp;->ab(Ljava/lang/Object;)V

    new-instance v7, Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object/from16 v1, p5

    invoke-direct {v7, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljei;)V

    new-instance v8, Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object/from16 v1, p6

    invoke-direct {v8, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljff;)V

    iget-object v9, v0, Ljge;->f:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Ljgb;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljgo;Ljce;ILandroidx/wear/ambient/AmbientMode$AmbientController;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/String;[B[B[B[B[B[B)V

    iget-object v1, v0, Ljge;->a:Landroid/accounts/Account;

    move-object/from16 v2, p0

    iput-object v1, v2, Ljgm;->t:Landroid/accounts/Account;

    iget-object v0, v0, Ljge;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, v2, Ljgm;->s:Ljava/util/Set;

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v15

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final D()[Ljca;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljca;

    return-object v0
.end method

.method protected final F()V
    .locals 0

    return-void
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Ljgb;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljgm;->s:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final s()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Ljgm;->t:Landroid/accounts/Account;

    return-object v0
.end method
