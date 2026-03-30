.class public abstract Lokj;
.super Lojy;
.source "PG"

# interfaces
.implements Logz;


# static fields
.field private static volatile t:Ljava/util/concurrent/Executor;


# instance fields
.field public final s:Ljava/util/Set;

.field private final u:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILokb;Loif;Lojc;)V
    .locals 11

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v7, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_19

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v10, Lokb;->a:Landroid/accounts/Account;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    new-instance v8, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v8, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, p0

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

    nop

    :goto_7
    move-object v10, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, v0, Lokj;->u:Landroid/accounts/Account;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v7, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    sget-object v5, Logd;->a:Logd;

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

    :goto_c
    invoke-direct/range {v1 .. v9}, Lojy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lokl;Loge;ILandroidx/wear/ambient/AmbientMode$AmbientController;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    sget-object v1, Lokl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

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

    :goto_10
    check-cast v3, Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    const v0, 0xf

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    const v1, 0x7

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v9, v10, Lokb;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    throw v0

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_29

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    monitor-enter v1

    nop

    :try_start_1
    sget-object v2, Lokl;->i:Lokl;

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lokl;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    nop

    invoke-direct {v2, v3, v4}, Lokl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lokl;->i:Lokl;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v1, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lokj;->s:Ljava/util/Set;

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

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v4, Lokl;->i:Lokl;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw v0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_25
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_27
    move-object/from16 v1, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2a
    move v6, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v10, Lokb;->c:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final E()[Logb;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    new-array p0, p0, [Logb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final G()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h()Ljava/util/Set;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lokj;->s:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lojy;->n()Z

    move-result v0

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

.method public final r()Landroid/accounts/Account;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lokj;->u:Landroid/accounts/Account;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
