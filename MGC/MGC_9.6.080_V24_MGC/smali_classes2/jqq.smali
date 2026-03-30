.class public final synthetic Ljqq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Ljqr;


# direct methods
.method public synthetic constructor <init>(Ljqr;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljqq;->a:Ljqr;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 11

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljqq;->a:Ljqr;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_36

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    sget-object v2, Logd;->a:Logd;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Location#isLocationEnabled"

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v5, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljqr;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_d
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

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

    :cond_1
    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljqr;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v0, v3}, Loge;->f(Landroid/content/Context;I)I

    move-result v0

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

    nop

    :goto_13
    goto/16 :goto_50

    nop

    :cond_3
    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

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

    :goto_16
    iget-object v0, p0, Ljqr;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_21

    nop

    :cond_5
    :goto_1a
    goto/32 :goto_54

    nop

    nop

    :goto_1b
    iget-object v0, p0, Ljqr;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljqr;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Lpdf;->g()V

    :goto_21
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_23
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Ljqr;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3, v0, v1}, Ljql;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_29
    goto/32 :goto_46

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Ljqr;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2d
    move-object v1, v3

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2e
    sget-object v4, Ljql;->a:Lsdb;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v6, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->lzrTHycw:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_31
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_32
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_6
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    nop

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_34
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    throw p0

    nop

    :goto_36
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_37
    if-eq v0, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    :goto_38
    new-instance v1, Ljqn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Ljqr;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v2, "connectLocationProvider"

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

    :goto_3b
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_1f

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3e
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v6, Ljql;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    const-string v0, "value"

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v8, "name=?"

    nop

    nop

    nop

    nop

    const-string v0, "use_location_for_services"

    nop

    nop

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_42
    const/high16 v6, 0x10000

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

    :goto_43
    invoke-static {v1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

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

    :goto_44
    invoke-interface {v1, v2}, Ljqo;->c(Z)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_45
    return-object v0

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v1, v0}, Ljqn;-><init>(Ltxm;)V

    :goto_4b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p0, Ljqr;->a:Landroid/content/Context;

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

    :goto_4d
    sget-object v2, Llyr;->b:Llze;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_50
    :try_start_2
    sget-object v4, Ljql;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v3

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const/16 v4, 0x9dc

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    const-string v4, "Failed to get \'Use My Location\' setting"

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_29

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Ljqr;->c:Lpdf;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Ljqr;->e:Llyv;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_4b

    nop

    nop

    :catch_2
    :goto_56
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_58
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_59
    move-object v3, v0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v3, Ljql;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, p0, Ljqr;->a:Landroid/content/Context;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5c
    goto :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_37

    nop

    nop
.end method
