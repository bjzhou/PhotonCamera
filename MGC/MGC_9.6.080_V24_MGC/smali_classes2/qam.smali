.class public final Lqam;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqaj;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lpxo;

.field private final c:Lrss;

.field private final d:Lpwh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpxo;Lrss;Lpwh;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqam;->a:Landroid/content/Context;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lqam;->c:Lrss;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqam;->b:Lpxo;

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
    iput-object p4, p0, Lqam;->d:Lpwh;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 2

    goto/32 :goto_b

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "gms_icing_mdd_shared_files"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqam;->c:Lrss;

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

    :goto_3
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-static {v0, v1, p0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lqam;->a:Landroid/content/Context;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

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

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final c()Lsui;
    .locals 8

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    iget-object v5, p0, Lqam;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_7
    invoke-virtual {v6, v4}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v4, Ljava/lang/String;

    nop

    nop

    :try_start_0
    iget-object v5, p0, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v6, p0, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v6}, Lpuq;->ao(Ljava/lang/String;Landroid/content/Context;Lpxo;)Lpwz;

    move-result-object v5

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lqcr; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2, v3}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v1

    nop

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

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    iget-object v3, p0, Lqam;->c:Lrss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v7, "Failed to deserialize newFileKey:"

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    goto/32 :goto_15

    nop

    nop

    :goto_15
    invoke-interface {v5}, Lpxo;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v5, v6}, Lqbq;->j(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xc

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v6}, Lrth;->c(Ljava/lang/String;)Lrth;

    move-result-object v6

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

    :goto_20
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

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

    :goto_21
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v6, "|"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    goto :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    const-string v2, "gms_icing_mdd_shared_files"

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
.end method

.method public final d()Lsui;
    .locals 17

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lpuq;->Q(Landroid/content/Context;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    nop

    :goto_3
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v15, "gms_icing_mdd_shared_files"

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_8
    if-eq v6, v8, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    :try_start_0
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lqam;->c:Lrss;

    nop

    nop

    nop

    invoke-static {v0, v15, v6}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    if-eqz v15, :cond_2

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    check-cast v15, Ljava/lang/String;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v12, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    invoke-static {v15, v4, v12}, Lpuq;->ao(Ljava/lang/String;Landroid/content/Context;Lpxo;)Lpwz;

    move-result-object v4

    nop

    nop

    nop
    :try_end_1
    .catch Lqcr; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v12, Lpxb;->a:Lpxb;

    nop

    nop

    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x7

    nop

    nop

    nop

    invoke-virtual {v12, v8}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ltlx;

    nop

    nop

    invoke-static {v0, v15, v12}, Lpuq;->ah(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lpxb;

    nop

    if-nez v8, :cond_1

    nop

    nop

    nop

    nop

    invoke-static {v11, v9}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v6, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_a

    nop

    nop

    :cond_1
    invoke-static {v6, v15}, Lpuq;->ak(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-static {v4}, Lpuq;->ar(Lpwz;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-static {v6, v4, v8}, Lpuq;->al(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ltlq;)V

    goto :goto_a

    nop

    nop

    nop

    nop

    :catch_0
    move-object/from16 v16, v8

    nop

    invoke-static {v13, v9, v15}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v1, Lqam;->b:Lpxo;

    nop

    invoke-interface {v4}, Lpxo;->a()V

    invoke-interface {v6, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_a
    move-object/from16 v8, v16

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    :cond_2
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_8

    nop

    invoke-static {v14}, Lqbq;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    new-instance v4, Ljava/lang/Exception;

    nop

    const-string v6, "Migrate to ChecksumOnly failed."

    nop

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lpxo;->a()V

    goto/16 :goto_f

    nop

    nop

    nop

    :goto_b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    invoke-virtual {v0}, Lpzp;->name()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrade to version "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Landroidx/viewpager2/widget/jY/lIiWb;->vSIP:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    nop

    nop

    nop

    :goto_c
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v4, v1, Lqam;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v15, v4}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/String;

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v12, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    iget-object v15, v1, Lqam;->b:Lpxo;

    nop

    invoke-static {v8, v12, v15}, Lpuq;->ao(Ljava/lang/String;Landroid/content/Context;Lpxo;)Lpwz;

    move-result-object v12

    nop
    :try_end_3
    .catch Lqcr; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v15, Lpxb;->a:Lpxb;

    nop

    nop

    nop

    nop

    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    const/4 v6, 0x7

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v6}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    check-cast v15, Ltlx;

    nop

    nop

    nop

    invoke-static {v0, v8, v15}, Lpuq;->ah(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Lpxb;

    nop

    nop

    if-nez v15, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {v11, v9}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    nop

    nop

    :cond_3
    invoke-static {v4, v8}, Lpuq;->ak(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-static {v12}, Lpuq;->as(Lpwz;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    invoke-static {v4, v8, v15}, Lpuq;->al(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ltlq;)V

    goto :goto_e

    nop

    nop

    :catch_1
    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x7

    nop

    nop

    invoke-static {v13, v9, v8}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Lpxo;->a()V

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_e
    move-object/from16 v6, v16

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    invoke-static {v14}, Lqbq;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lqam;->b:Lpxo;

    nop

    nop

    new-instance v4, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Migrate to DownloadTransform failed."

    nop

    nop

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lpxo;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_f
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v1, Lqam;->d:Lpwh;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_11
    new-instance v3, Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_12
    iget v4, v5, Lpzp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_13
    iget v4, v5, Lpzp;->d:I

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

    :goto_14
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_15
    iget-object v6, v1, Lqam;->b:Lpxo;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v4, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

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

    goto/32 :goto_17

    nop

    nop

    :goto_19
    iget v0, v0, Lpzp;->d:I

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

    :goto_1a
    const-string v11, "%s: Unable to read sharedFile from shared preferences."

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1c
    if-ne v4, v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_5
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Lqbq;->c(Ljava/lang/String;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_1f
    const-string v3, "%s Cannot migrate back from value %s to %s. Clear everything!"

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_20
    invoke-static {v0}, Lqbq;->c(Ljava/lang/String;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v5, v2, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v4, v4, Lpzp;->d:I

    nop

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

    :goto_25
    invoke-static {v4, v5}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v9, "SharedFilesMetadata"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, v0, Lpzp;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v5, v3, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    invoke-static {v0, v5}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    :goto_2c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    filled-new-array {v9, v0, v5}, [Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v5, v2, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v6, v5, Lpzp;->d:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v2, "Fail to set target version "

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_31
    move v4, v8

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_32
    add-int/2addr v7, v8

    nop

    nop

    nop

    nop

    :goto_33
    :try_start_5
    iget v0, v5, Lpzp;->d:I

    nop

    nop

    nop

    nop

    if-gt v7, v0, :cond_11

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lpzp;->a(I)Lpzp;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lpzp;->ordinal()I

    move-result v6

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_34
    if-lt v6, v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0}, Lpwh;->h()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_38
    invoke-static {v0}, Lpuq;->O(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v2}, Lpxo;->a()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3a
    invoke-static {v5, v2, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v4, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_3e
    invoke-static {v1}, Lpzp;->a(I)Lpzp;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v0}, Lpzp;->a(I)Lpzp;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_40
    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    :goto_41
    invoke-interface {v1}, Lpxo;->a()V

    :goto_42
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v2, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_44
    new-instance v3, Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0}, Lpxo;->a()V

    :goto_46
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_2c

    nop

    :cond_8
    :try_start_6
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    invoke-static {v7}, Lpzp;->a(I)Lpzp;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v0, v4}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_49
    iget-object v0, v1, Lqam;->d:Lpwh;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_9
    goto/32 :goto_3b

    nop

    :goto_4b
    const-string v14, "Failed to commit migration metadata to disk"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4c
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4d
    if-ne v0, v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4e
    const-string v8, "Downgraded file key from "

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_52
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

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

    :goto_53
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_54
    if-eqz v4, :cond_c

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_29

    nop

    nop

    :goto_55
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v1, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_59
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v0, v6}, Lpuq;->N(Landroid/content/Context;Lpxo;)Lpzp;

    move-result-object v0

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

    nop

    :goto_5d
    iget-object v6, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget v0, Lqbq;->a:I

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v3, v2}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v0}, Lpxo;->a()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_63
    sget-object v0, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->ZCtCpZ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_64
    if-ne v0, v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_65
    invoke-static {v5, v3, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v0, v1}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget v6, v5, Lpzp;->d:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_68
    iget-object v1, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_69
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_76

    nop

    nop

    :goto_6c
    iget-object v4, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6d
    invoke-static {v0, v5}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_6f
    const-string v3, "Failed to commit migration version to disk. Fail to set target version to "

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_70
    throw v0

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v7, v0, Lpzp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_73
    if-ne v6, v8, :cond_e

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_e
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, v1, Lqam;->b:Lpxo;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const v1, 0x3

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

    :goto_76
    goto/32 :goto_3c

    nop

    nop

    :goto_77
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    :goto_78
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v3}, Lqbq;->c(Ljava/lang/String;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v0, v1, Lqam;->b:Lpxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v4, v6}, Lpuq;->N(Landroid/content/Context;Lpxo;)Lpzp;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7d
    const-string v10, "."

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

    :goto_7e
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v1}, Lpwh;->h()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_81
    invoke-static {v0, v5}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_82
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_77

    nop

    nop

    :goto_83
    invoke-static {v0, v4}, Lpuq;->N(Landroid/content/Context;Lpxo;)Lpzp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_84
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_27

    nop

    nop

    :goto_86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_87
    const-string v13, "%s Failed to deserialize file key %s, remove and continue."

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_88
    new-instance v1, Ljava/lang/Exception;

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

    :goto_89
    invoke-static {v0, v4}, Lpuq;->N(Landroid/content/Context;Lpxo;)Lpzp;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eq v6, v7, :cond_f

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v0, v1, Lqam;->a:Landroid/content/Context;

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

    :goto_8c
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_8d
    if-eqz v0, :cond_10

    nop

    goto/32 :goto_2c

    nop

    :cond_10
    goto/32 :goto_65

    nop

    nop

    :goto_8e
    goto/16 :goto_33

    nop

    nop

    :cond_11
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_8f
    const/4 v8, 0x1

    nop

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

    nop

    :goto_90
    invoke-static {v5, v3, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpwz;)Lsui;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/16 v1, 0xc

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
    invoke-virtual {p0, v0}, Lqam;->f(Lryy;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    goto/32 :goto_5

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    invoke-direct {v0, p1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lpzv;

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

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p1, v1}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    new-instance v0, Lsbt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, v0, p1}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lryy;)Lsui;
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    new-instance v1, Lryd;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, v3, v4}, Lpuq;->ap(Lpwz;Landroid/content/Context;Lpxo;)Ljava/lang/String;

    move-result-object v3

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

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "gms_icing_mdd_shared_files"

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

    :goto_8
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-static {v0, v3, v4}, Lpuq;->ah(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-virtual {v4, v5}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1, v2}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    check-cast v2, Lpwz;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lryd;->e()Lryh;

    move-result-object p0

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

    :goto_12
    goto/32 :goto_4

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

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

    :goto_15
    const/4 v5, 0x7

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

    :goto_16
    iget-object v4, p0, Lqam;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_1a
    iget-object v2, p0, Lqam;->c:Lrss;

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

    :goto_1b
    iget-object v0, p0, Lqam;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1}, Lryd;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    sget-object v4, Lpxb;->a:Lpxb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v3, Lpxb;

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

    :goto_20
    check-cast v4, Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Lqam;->a:Landroid/content/Context;

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

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final g(Lpwz;)Lsui;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1, v1}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lqam;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "gms_icing_mdd_shared_files"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0, p0}, Lpuq;->ap(Lpwz;Landroid/content/Context;Lpxo;)Ljava/lang/String;

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p0}, Lpuq;->am(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    iget-object v0, p0, Lqam;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqam;->b:Lpxo;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lpwz;Lpxb;)Lsui;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-static {v0, p1, v1}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p1

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

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_3
    invoke-static {p1, p0, p2}, Lpuq;->an(Landroid/content/SharedPreferences;Ljava/lang/String;Ltlq;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lqam;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v0, p0}, Lpuq;->ap(Lpwz;Landroid/content/Context;Lpxo;)Ljava/lang/String;

    move-result-object p0

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

    :goto_f
    const-string p1, "gms_icing_mdd_shared_files"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lqam;->b:Lpxo;

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

    :goto_11
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

    :goto_12
    iget-object v0, p0, Lqam;->a:Landroid/content/Context;

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
