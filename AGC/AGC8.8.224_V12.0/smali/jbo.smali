.class final Ljbo;
.super Ljec;


# instance fields
.field final synthetic a:Ljbp;

.field private final b:Ljbd;


# direct methods
.method public constructor <init>(Ljbp;Ljbd;Ljdh;)V
    .locals 0

    iput-object p1, p0, Ljbo;->a:Ljbp;

    sget-object p1, Ljbf;->j:Ljava/util/List;

    invoke-direct {p0, p3}, Ljec;-><init>(Ljdh;)V

    iput-object p2, p0, Ljbo;->b:Ljbd;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic b(Ljcu;)V
    .locals 0

    check-cast p1, Ljbq;

    invoke-virtual {p0, p1}, Ljbo;->d(Ljbq;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljdq;

    invoke-super {p0, p1}, Ljec;->i(Ljdq;)V

    return-void
.end method

.method protected final d(Ljbq;)V
    .locals 34

    move-object/from16 v1, p0

    new-instance v2, Ljbn;

    invoke-direct {v2, v1}, Ljbn;-><init>(Ljbo;)V

    :try_start_0
    iget-object v0, v1, Ljbo;->b:Ljbd;

    iget-object v4, v0, Ljbd;->a:Ljbc;

    check-cast v4, Ljbf;

    iget-object v4, v4, Ljbf;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljbe;

    invoke-interface {v0}, Ljbe;->a()Ljbd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    sget-object v4, Ljbf;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljbe;

    invoke-interface {v0}, Ljbe;->a()Ljbd;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_f

    if-nez v0, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_0
    if-nez v4, :cond_4

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v0}, Ljbr;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_4
    iget-object v0, v4, Ljbd;->a:Ljbc;

    iget-object v5, v0, Ljbc;->c:Ljbi;

    iget-object v0, v4, Ljbd;->f:Ljava/lang/String;

    iget-object v7, v4, Ljbd;->i:Lnwp;

    iget-object v7, v7, Lnwp;->b:Lnws;

    check-cast v7, Loga;

    iget v7, v7, Loga;->d:I

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    const/4 v8, 0x1

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_7
    move-object v9, v5

    check-cast v9, Ljbu;

    iget-object v9, v9, Ljbu;->f:Landroid/content/Context;

    if-nez v9, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v9, Ljbu;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lloz;

    if-nez v9, :cond_9

    sget-object v9, Ljbu;->b:Llox;

    sget-object v10, Logc;->b:Logc;

    new-instance v11, Llow;

    invoke-direct {v11, v9, v0, v10}, Llow;-><init>(Llox;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Ljbu;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v0, v11}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lloz;

    if-nez v9, :cond_9

    move-object v9, v11

    goto :goto_2

    :cond_9
    :goto_2
    invoke-virtual {v9}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Logc;

    iget-object v0, v0, Logc;->a:Lnxa;

    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Logb;

    iget v11, v10, Logb;->a:I

    and-int/2addr v11, v8

    if-eqz v11, :cond_b

    iget v11, v10, Logb;->b:I

    if-eqz v11, :cond_b

    if-ne v11, v7, :cond_a

    :cond_b
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object v0, v9

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Logb;

    iget-object v12, v11, Logb;->c:Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljbu;

    iget-object v0, v0, Ljbu;->f:Landroid/content/Context;

    invoke-static {v0}, Lktm;->c(Landroid/content/Context;)Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_d

    move-object v8, v7

    move-wide v6, v14

    goto/16 :goto_b

    :cond_d
    sget-object v13, Ljbu;->e:Ljava/lang/Long;

    if-nez v13, :cond_14

    if-eqz v0, :cond_13

    sget-object v13, Ljbu;->d:Ljava/lang/Boolean;

    if-nez v13, :cond_f

    invoke-static {v0}, Ljid;->b(Landroid/content/Context;)Lkgd;

    move-result-object v13

    const-string v3, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {v13, v3}, Lkgd;->l(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    :goto_7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Ljbu;->d:Ljava/lang/Boolean;

    :cond_f
    sget-object v3, Ljbu;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ljtr;->c(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v3

    sget-object v10, Ljtr;->i:Ljava/util/HashMap;

    const-string v13, "android_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v13, v8}, Ljtr;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_9

    :cond_10
    invoke-static {v0, v13}, Ljtr;->f(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move-wide/from16 v17, v14

    goto :goto_8

    :cond_11
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-wide/from16 v17, v14

    :goto_8
    sget-object v0, Ljtr;->i:Ljava/util/HashMap;

    invoke-static {v3, v0, v13, v8}, Ljtr;->e(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ljbu;->e:Ljava/lang/Long;

    goto :goto_a

    :cond_12
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ljbu;->e:Ljava/lang/Long;

    goto :goto_a

    :cond_13
    move-object v8, v7

    move-wide v6, v14

    goto :goto_b

    :cond_14
    :goto_a
    sget-object v0, Ljbu;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v8, v7

    move-wide/from16 v6, v17

    :goto_b
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_c

    :cond_15
    sget-object v0, Ljbu;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v10, v0

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljcb;->b([B)J

    move-result-wide v6

    goto :goto_d

    :cond_16
    :goto_c
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljcb;->b([B)J

    move-result-wide v6

    :goto_d
    iget-wide v9, v11, Logb;->d:J

    iget-wide v11, v11, Logb;->e:J

    cmp-long v0, v9, v14

    if-ltz v0, :cond_18

    cmp-long v0, v11, v14

    if-lez v0, :cond_18

    cmp-long v0, v6, v14

    if-ltz v0, :cond_17

    rem-long/2addr v6, v11

    goto :goto_e

    :cond_17
    const-wide v13, 0x7fffffffffffffffL

    rem-long v17, v13, v11

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    and-long/2addr v6, v13

    rem-long/2addr v6, v11

    add-long v17, v17, v6

    rem-long v6, v17, v11

    :goto_e
    cmp-long v0, v6, v9

    if-ltz v0, :cond_18

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Ljdq;)V

    return-void

    :cond_18
    move-object v7, v8

    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_19
    :try_start_2
    iget-object v0, v4, Ljbd;->i:Lnwp;

    iget-object v5, v4, Ljbd;->g:Lnxy;

    invoke-interface {v5}, Lnxy;->H()Lnvt;

    move-result-object v5

    iget-object v6, v0, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1a
    iget-object v0, v0, Lnwp;->b:Lnws;

    check-cast v0, Loga;

    iget v6, v0, Loga;->a:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v0, Loga;->a:I

    iput-object v5, v0, Loga;->e:Lnvt;

    iget-object v0, v4, Ljbd;->i:Lnwp;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Loga;

    new-instance v6, Ljbj;

    new-instance v7, Ljbw;

    iget-object v0, v4, Ljbd;->a:Ljbc;

    move-object v8, v0

    check-cast v8, Ljbf;

    iget-object v8, v8, Ljbf;->g:Ljava/lang/String;

    check-cast v0, Ljbf;

    iget-object v0, v0, Ljbf;->d:Landroid/content/Context;

    sget v11, Ljbc;->a:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1c

    const-class v11, Ljbc;

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b

    :try_start_3
    sget v13, Ljbc;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v13, v12, :cond_1b

    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Ljbc;->a:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_f

    :catch_1
    move-exception v0

    :try_start_5
    const-string v13, "AbstractClearcutLogger"

    const-string v14, "This can\'t happen."

    invoke-static {v13, v14, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_f
    monitor-exit v11

    goto :goto_10

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_1c
    :goto_10
    sget v19, Ljbc;->a:I

    iget-object v0, v4, Ljbd;->f:Ljava/lang/String;

    iget-object v11, v4, Ljbd;->e:Ljava/lang/String;

    iget-object v13, v4, Ljbd;->a:Ljbc;

    check-cast v13, Ljbf;

    iget-object v13, v13, Ljbf;->h:Ljava/util/EnumSet;

    sget-object v14, Ljbk;->b:Ljbk;

    invoke-virtual {v13, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    sget-object v14, Ljbk;->f:Ljava/util/EnumSet;

    invoke-virtual {v13, v14}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v24

    sget-object v14, Ljbk;->e:Ljava/util/EnumSet;

    invoke-virtual {v13, v14}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    const/16 v28, 0x0

    goto :goto_12

    :cond_1d
    invoke-virtual {v13}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, -0x1

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljbk;

    iget v15, v15, Ljbk;->h:I

    xor-int/2addr v15, v12

    and-int/2addr v14, v15

    goto :goto_11

    :cond_1e
    move/from16 v28, v14

    :goto_12
    const/16 v20, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v11

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v28}, Ljbw;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;ZILjava/lang/Integer;ZI)V

    invoke-virtual {v5}, Lnve;->J()[B

    move-result-object v20

    const/4 v3, 0x0

    invoke-static {v3}, Ljbc;->d(Ljava/util/ArrayList;)[I

    move-result-object v21

    iget-object v0, v4, Ljbd;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    sget-object v8, Ljbc;->b:[Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_13

    :cond_1f
    move-object/from16 v22, v3

    :goto_13
    iget-object v0, v4, Ljbd;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljbc;->d(Ljava/util/ArrayList;)[I

    move-result-object v23

    iget v0, v5, Loga;->d:I

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    move/from16 v24, v0

    invoke-direct/range {v17 .. v24}, Ljbj;-><init>(Ljbw;Loga;[B[I[Ljava/lang/String;[II)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b

    iget-object v0, v4, Ljbd;->h:Lksw;

    if-eqz v0, :cond_6f

    iget-object v4, v6, Ljbj;->k:Loga;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Loga;->e:Lnvt;

    iget-object v5, v0, Lksw;->b:Lkse;

    iget-object v7, v0, Lksw;->a:Lkrw;

    invoke-virtual {v4}, Lnvt;->A()[B

    move-result-object v4

    iget-object v5, v5, Lkse;->a:Lkru;

    sget-object v8, Lksa;->b:Lksb;

    sget-object v11, Lksa;->a:Lkrx;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    move-object v0, v8

    check-cast v0, Lksc;

    iget-object v0, v0, Lksc;->d:Lksu;

    sget-object v12, Lksc;->e:Lnaa;

    iget-object v13, v7, Lkrw;->a:Landroid/content/Context;

    sget-boolean v0, Lksu;->a:Z

    const/16 v14, 0x40

    if-nez v0, :cond_2b

    sget-object v17, Lksu;->b:Ljava/lang/Object;

    monitor-enter v17

    :try_start_7
    sget-boolean v0, Lksu;->a:Z

    if-nez v0, :cond_2a

    const/16 v16, 0x1

    sput-boolean v16, Lksu;->a:Z

    sget-object v18, Llon;->a:Ljava/lang/Object;

    monitor-enter v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object v0, Llon;->b:Landroid/content/Context;

    if-eqz v0, :cond_20

    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_15

    :cond_20
    :try_start_9
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Llon;->b:Landroid/content/Context;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_14

    :catch_2
    move-exception v0

    :try_start_a
    invoke-static {}, Llon;->c()V

    const-string v0, "PhenotypeContext"

    const-string v3, "context.getApplicationContext() yielded NullPointerException"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_15
    :try_start_b
    invoke-static {v13}, Lloz;->h(Landroid/content/Context;)V

    invoke-static {v13}, Lkwp;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->f()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {v13}, Ljcs;->a(Landroid/content/Context;)Ljcs;

    move-result-object v0

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v13, Ljcs;->a:Ljava/util/Set;

    if-nez v3, :cond_21

    invoke-static {}, Ljcq;->a()Ljcq;

    move-result-object v0

    goto/16 :goto_18

    :cond_21
    iget-object v13, v0, Ljcs;->c:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    sget-object v0, Ljcq;->a:Ljcq;

    goto/16 :goto_18

    :cond_22
    invoke-static {}, Ljcm;->b()Z

    move-result v13

    if-eqz v13, :cond_23

    iget-object v13, v0, Ljcs;->b:Landroid/content/Context;

    invoke-static {v13}, Ljcr;->b(Landroid/content/Context;)Z

    move-result v13

    invoke-static {v3, v13}, Ljcm;->d(Ljava/lang/String;Z)Ljcq;

    move-result-object v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v9, v13

    goto :goto_17

    :cond_23
    :try_start_c
    iget-object v13, v0, Ljcs;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v3, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v14, v0, Ljcs;->b:Landroid/content/Context;

    invoke-static {v14}, Ljcr;->b(Landroid/content/Context;)Z

    move-result v14

    if-nez v13, :cond_24

    invoke-static {}, Ljcq;->a()Ljcq;

    move-result-object v13

    move-object v9, v13

    goto :goto_17

    :cond_24
    iget-object v9, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_27

    iget-object v9, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    const/4 v15, 0x1

    if-eq v9, v15, :cond_25

    goto :goto_16

    :cond_25
    new-instance v9, Ljcj;

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v15, v15, v10

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    invoke-direct {v9, v15}, Ljcj;-><init>([B)V

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v15, v9, v14, v10}, Ljcm;->c(Ljava/lang/String;Ljgw;ZZ)Ljcq;

    move-result-object v14

    iget-boolean v10, v14, Ljcq;->b:Z

    if-eqz v10, :cond_26

    iget-object v10, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_26

    iget-object v10, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x2

    and-int/2addr v10, v13

    if-eqz v10, :cond_26

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-static {v15, v9, v13, v10}, Ljcm;->c(Ljava/lang/String;Ljgw;ZZ)Ljcq;

    move-result-object v9

    iget-boolean v9, v9, Ljcq;->b:Z

    if-eqz v9, :cond_26

    invoke-static {}, Ljcq;->a()Ljcq;

    move-result-object v9

    goto :goto_17

    :cond_26
    move-object v9, v14

    goto :goto_17

    :cond_27
    :goto_16
    invoke-static {}, Ljcq;->a()Ljcq;

    move-result-object v9

    :goto_17
    iget-boolean v10, v9, Ljcq;->b:Z

    if-eqz v10, :cond_28

    iput-object v3, v0, Ljcs;->c:Ljava/lang/String;

    :cond_28
    move-object v0, v9

    goto :goto_18

    :catch_3
    move-exception v0

    invoke-static {}, Ljcq;->b()Ljcq;

    move-result-object v0

    :goto_18
    iget-boolean v0, v0, Ljcq;->b:Z

    if-nez v0, :cond_29

    const-string v0, "CBVerifier"

    const-string v3, "Phenotype flags were not sycned because package was not Google Signed."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v17

    goto :goto_1a

    :cond_29
    invoke-static {v7, v12}, Lksu;->a(Lkrw;Lnaa;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_19

    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0

    :cond_2a
    :goto_19
    monitor-exit v17

    goto :goto_1a

    :catchall_2
    move-exception v0

    monitor-exit v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0

    :cond_2b
    :goto_1a
    invoke-static {}, Lohg;->b()V

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->e()Z

    move-result v0

    if-nez v0, :cond_2c

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    const/4 v0, 0x1

    goto/16 :goto_2f

    :cond_2c
    iget-object v0, v7, Lkrw;->a:Landroid/content/Context;

    sget-object v3, Lksc;->e:Lnaa;

    sget-object v9, Lksy;->a:Lksx;

    if-eqz v9, :cond_2d

    sget-boolean v9, Lksy;->c:Z

    invoke-static {v0, v3}, Lksy;->a(Landroid/content/Context;Lnaa;)Z

    move-result v10

    if-eq v9, v10, :cond_33

    :cond_2d
    sget-object v9, Lksy;->b:Ljava/lang/Object;

    monitor-enter v9

    :try_start_10
    invoke-static {v0, v3}, Lksy;->a(Landroid/content/Context;Lnaa;)Z

    move-result v3

    sget-object v10, Lksy;->a:Lksx;

    if-eqz v10, :cond_2e

    sget-boolean v10, Lksy;->c:Z

    if-eq v10, v3, :cond_32

    :cond_2e
    if-eqz v3, :cond_31

    sget-object v10, Lmpx;->a:Lmpx;

    sget-object v12, Lohd;->a:Lohd;

    invoke-virtual {v12}, Lohd;->b()Lohe;

    move-result-object v12

    invoke-interface {v12}, Lohe;->l()Z

    move-result v12

    if-eqz v12, :cond_30

    sget-object v12, Lohd;->a:Lohd;

    invoke-virtual {v12}, Lohd;->b()Lohe;

    move-result-object v12

    invoke-interface {v12}, Lohe;->m()Z

    move-result v12

    if-nez v12, :cond_2f

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.google.android.gms"

    invoke-static {v12, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    :cond_2f
    const-string v10, "COLLECTION_BASIS_VERIFIER_CLIENT_ERROR_LOGGING"

    sget-object v12, Lffe;->f:Lffe;

    sget-object v13, Ljbk;->e:Ljava/util/EnumSet;

    invoke-static {v0}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {v10}, Ljhp;->Z(Ljava/lang/String;)V

    invoke-static {v0, v10, v12, v13}, Ljcb;->d(Landroid/content/Context;Ljava/lang/String;Lmrl;Ljava/util/EnumSet;)Ljbf;

    move-result-object v10

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v10

    :cond_30
    new-instance v12, Lksv;

    const-string v13, "COLLECTION_BASIS_VERIFIER"

    sget-object v14, Lffe;->f:Lffe;

    sget-object v15, Ljbk;->e:Ljava/util/EnumSet;

    invoke-static {v0}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {v13}, Ljhp;->Z(Ljava/lang/String;)V

    invoke-static {v0, v13, v14, v15}, Ljcb;->d(Landroid/content/Context;Ljava/lang/String;Lmrl;Ljava/util/EnumSet;)Ljbf;

    move-result-object v13

    invoke-direct {v12, v13, v10, v0}, Lksv;-><init>(Ljbf;Lmqp;Landroid/content/Context;)V

    sput-object v12, Lksy;->a:Lksx;

    goto :goto_1b

    :cond_31
    new-instance v0, Lkti;

    invoke-direct {v0}, Lkti;-><init>()V

    sput-object v0, Lksy;->a:Lksx;

    :goto_1b
    sput-boolean v3, Lksy;->c:Z

    :cond_32
    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_33
    sget-object v0, Lksy;->a:Lksx;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    :try_start_11
    new-instance v10, Lkrz;

    iget-object v0, v7, Lkrw;->a:Landroid/content/Context;

    iget v12, v5, Lkru;->b:I

    move-object v13, v8

    check-cast v13, Lksc;

    iget-object v13, v13, Lksc;->b:Landroid/util/LruCache;

    check-cast v8, Lksc;

    iget-object v8, v8, Lksc;->c:Landroid/util/LruCache;

    invoke-direct {v10, v0, v12, v13, v8}, Lkrz;-><init>(Landroid/content/Context;ILandroid/util/LruCache;Landroid/util/LruCache;)V

    iget v0, v5, Lkru;->a:I

    move-object v8, v3

    check-cast v8, Lmqt;

    iget-object v8, v8, Lmqt;->a:Ljava/lang/Object;

    move-object/from16 v20, v8

    check-cast v20, Lksx;

    invoke-static {v4}, Lnvy;->K([B)Lnvy;

    move-result-object v8

    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v13, Lkth;

    sget-object v18, Lksc;->e:Lnaa;

    invoke-static {v7}, Lkte;->a(Lkrw;)Lkte;

    move-result-object v19

    array-length v14, v4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v13

    move-object/from16 v21, v7

    move/from16 v22, v0

    move/from16 v23, v14

    move-object/from16 v24, v12

    invoke-direct/range {v17 .. v26}, Lkth;-><init>(Lnaa;Lkte;Lksx;Lkrw;IILjava/util/ArrayDeque;[B[B)V

    invoke-virtual {v10, v0}, Lkrz;->a(I)Lpbg;

    move-result-object v14

    if-nez v14, :cond_35

    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x7

    invoke-virtual {v13, v0}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_34
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_35
    invoke-virtual {v8}, Lnvy;->C()Z

    move-result v15

    if-nez v15, :cond_36

    invoke-static {v14}, Lksc;->e(Lpbg;)Lpbd;

    move-result-object v15

    sget-object v9, Lmpx;->a:Lmpx;

    invoke-static {v7, v15, v11, v13, v9}, Lksc;->a(Lkrw;Lpbd;Lkrx;Lkth;Lmqp;)Z

    move-result v9

    if-nez v9, :cond_36

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_36
    invoke-static {v14}, Lksc;->e(Lpbg;)Lpbd;

    move-result-object v9

    invoke-static {v9}, Lksc;->b(Lpbd;)Z

    move-result v9
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    move-object/from16 v24, v2

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_1c
    :try_start_12
    invoke-virtual {v8}, Lnvy;->C()Z

    move-result v18

    if-nez v18, :cond_63

    invoke-virtual {v8}, Lnvy;->m()I

    move-result v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    move-object/from16 v25, v6

    :try_start_13
    invoke-static {v1}, Lnzn;->a(I)I

    move-result v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    move-object/from16 v26, v3

    :try_start_14
    invoke-static {v1}, Lnzn;->b(I)I

    move-result v3
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    move-object/from16 v29, v4

    :try_start_15
    iget-object v4, v14, Lpbg;->b:Lnxt;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    int-to-long v11, v6

    move-object/from16 v32, v5

    :try_start_16
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    if-eqz v9, :cond_37

    invoke-virtual {v8, v1}, Lnvy;->E(I)Z

    move-object v1, v2

    move v5, v3

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_27

    :cond_37
    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lnwp;->aI(J)V

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_38
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_39
    iget-object v4, v14, Lpbg;->b:Lnxt;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_62

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpbc;

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3b

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3b

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3a

    move v5, v3

    const/4 v3, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v3, 0x0

    const/4 v5, 0x4

    goto :goto_1d

    :cond_3b
    move v5, v3

    const/4 v3, 0x0

    :goto_1d
    if-eqz v3, :cond_3f

    iget v2, v4, Lpbc;->a:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_3e

    iget v2, v4, Lpbc;->b:I

    invoke-virtual {v10, v2}, Lkrz;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v1, 0xa

    invoke-virtual {v13, v1}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lnwp;->aI(J)V

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_3c
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_3d
    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_26

    :cond_3e
    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_26

    :cond_3f
    iget v3, v4, Lpbc;->a:I

    const/16 v18, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_40

    goto :goto_1e

    :cond_40
    if-eqz v2, :cond_54

    invoke-static {v0, v6}, Lksc;->c(II)Z

    move-result v3

    if-eqz v3, :cond_54

    :goto_1e
    const/4 v3, 0x2

    if-eq v5, v3, :cond_42

    const/4 v3, 0x3

    if-ne v5, v3, :cond_41

    const/4 v3, 0x3

    const/4 v5, 0x3

    goto :goto_1f

    :cond_41
    move-object v1, v2

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_27

    :cond_42
    move v3, v5

    :goto_1f
    iget v11, v4, Lpbc;->b:I

    invoke-virtual {v10, v11}, Lkrz;->d(I)Z

    move-result v11

    if-nez v11, :cond_44

    invoke-static {v0, v6}, Lksc;->c(II)Z

    move-result v11

    if-nez v11, :cond_44

    invoke-static {v4}, Lksc;->d(Lpbc;)Lpbd;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    move-object/from16 v11, v30

    invoke-static {v7, v4, v11, v13, v5}, Lksc;->a(Lkrw;Lpbd;Lkrx;Lkth;Lmqp;)Z

    move-result v4

    if-nez v4, :cond_43

    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_43
    invoke-virtual {v8, v1}, Lnvy;->E(I)Z

    move-object v1, v2

    move v5, v3

    move-object v2, v11

    move-object/from16 v3, v31

    goto/16 :goto_27

    :cond_44
    move-object/from16 v11, v30

    new-instance v1, Lksd;

    move-object/from16 v20, v15

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v18, v1

    move/from16 v19, v0

    move/from16 v22, v9

    move/from16 v23, v6

    invoke-direct/range {v18 .. v23}, Lksd;-><init>(ILjava/lang/Integer;IZI)V

    move-object/from16 v3, v31

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v0, v6}, Lksc;->c(II)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez v2, :cond_45

    const/4 v0, 0x0

    goto :goto_21

    :cond_45
    const-string v0, "type.googleapis.com/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v0, 0x0

    goto :goto_21

    :cond_46
    const/16 v0, 0x14

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkwp;->aw(Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    :try_start_17
    iget-object v1, v10, Lkrz;->a:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_49

    iget-object v1, v10, Lkrz;->b:Lpbj;

    if-nez v1, :cond_47

    invoke-virtual {v10}, Lkrz;->c()Lpbj;

    move-result-object v1

    iput-object v1, v10, Lkrz;->b:Lpbj;

    :cond_47
    iget-object v1, v10, Lkrz;->b:Lpbj;

    iget-object v1, v1, Lpbj;->b:Lnxt;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v12, v10, Lkrz;->a:Landroid/util/LruCache;

    invoke-virtual {v12, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_49
    :goto_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5

    goto :goto_21

    :catch_4
    move-exception v0

    const/4 v0, 0x0

    :goto_21
    if-nez v0, :cond_4c

    :try_start_18
    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 v0, 0x9

    invoke-virtual {v13, v0}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-static {v2}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4a
    iget-object v2, v0, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    sget-object v3, Loah;->n:Loah;

    iget v3, v2, Loah;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Loah;->a:I

    iput-object v1, v2, Loah;->g:Ljava/lang/String;

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_4b
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_22

    :cond_4d
    iget v0, v4, Lpbc;->b:I

    :goto_22
    const/4 v1, 0x3

    if-ne v5, v1, :cond_4e

    const/4 v15, 0x0

    goto :goto_23

    :cond_4e
    invoke-virtual {v8}, Lnvy;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v15, v1

    :goto_23
    invoke-virtual {v8}, Lnvy;->d()I

    move-result v1

    invoke-virtual {v10, v0}, Lkrz;->b(I)Lpbg;

    move-result-object v2

    if-nez v9, :cond_50

    invoke-static {v4}, Lksc;->d(Lpbc;)Lpbd;

    move-result-object v9

    invoke-static {v9}, Lksc;->b(Lpbd;)Z

    move-result v9

    if-nez v9, :cond_50

    invoke-static {v2}, Lksc;->e(Lpbg;)Lpbd;

    move-result-object v9

    invoke-static {v9}, Lksc;->b(Lpbd;)Z

    move-result v9

    if-eqz v9, :cond_4f

    const/4 v9, 0x1

    goto :goto_24

    :cond_4f
    const/4 v9, 0x0

    goto :goto_24

    :cond_50
    const/4 v9, 0x1

    :goto_24
    if-eqz v15, :cond_52

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_51

    goto :goto_25

    :cond_51
    move/from16 v21, v1

    move-object v14, v2

    move-object v2, v11

    const/4 v1, 0x0

    goto :goto_27

    :cond_52
    :goto_25
    invoke-static {v4}, Lksc;->d(Lpbc;)Lpbd;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    invoke-static {v7, v4, v11, v13, v6}, Lksc;->a(Lkrw;Lpbd;Lkrx;Lkth;Lmqp;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-static {v2}, Lksc;->e(Lpbg;)Lpbd;

    move-result-object v4

    sget-object v6, Lmpx;->a:Lmpx;

    invoke-static {v7, v4, v11, v13, v6}, Lksc;->a(Lkrw;Lpbd;Lkrx;Lkth;Lmqp;)Z

    move-result v4

    if-nez v4, :cond_51

    :cond_53
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_54
    move-object/from16 v2, v30

    move-object/from16 v3, v31

    :goto_26
    invoke-static {v4}, Lksc;->d(Lpbc;)Lpbd;

    move-result-object v4

    if-nez v9, :cond_56

    invoke-static {v4}, Lksc;->b(Lpbd;)Z

    move-result v18

    if-nez v18, :cond_56

    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lnwp;->aI(J)V

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_55
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    invoke-static {v7, v4, v2, v13, v11}, Lksc;->a(Lkrw;Lpbd;Lkrx;Lkth;Lmqp;)Z

    move-result v4

    if-nez v4, :cond_57

    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_57
    sget v4, Lksc;->a:I

    if-ne v0, v4, :cond_58

    const/4 v4, 0x1

    if-ne v6, v4, :cond_58

    invoke-virtual {v8}, Lnvy;->x()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_58
    invoke-virtual {v8, v1}, Lnvy;->E(I)Z

    const/4 v1, 0x0

    :goto_27
    if-nez v15, :cond_5a

    const/4 v4, 0x4

    if-ne v5, v4, :cond_59

    goto :goto_28

    :cond_59
    move-object v11, v2

    move-object v12, v3

    move-object/from16 v6, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object/from16 v5, v32

    move-object v2, v1

    move-object/from16 v1, p0

    goto/16 :goto_1c

    :cond_5a
    :goto_28
    if-nez v15, :cond_5b

    invoke-virtual {v8}, Lnvy;->d()I

    move-result v4

    goto :goto_29

    :cond_5b
    move-object v4, v15

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v21, v4

    :goto_29
    invoke-virtual {v8}, Lnvy;->d()I

    move-result v5

    if-lt v5, v4, :cond_61

    invoke-virtual {v8}, Lnvy;->d()I

    move-result v0

    const/16 v5, 0xb

    if-le v0, v4, :cond_5d

    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {v13, v5}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_5c
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_5d
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lkwp;->e()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v13, v5}, Lkth;->b(I)Lnwp;

    move-result-object v0

    invoke-virtual {v13, v0}, Lkth;->a(Lnwp;)V

    :cond_5e
    const/4 v0, 0x0

    goto/16 :goto_2f

    :cond_5f
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksd;

    iget v4, v0, Lksd;->a:I

    iget-object v15, v0, Lksd;->e:Ljava/lang/Object;

    iget v5, v0, Lksd;->b:I

    iget-boolean v9, v0, Lksd;->c:Z

    invoke-virtual {v10, v4}, Lkrz;->b(I)Lpbg;

    move-result-object v14

    if-eqz v15, :cond_60

    move-object v0, v15

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    move/from16 v21, v5

    move/from16 v33, v4

    move v4, v0

    move/from16 v0, v33

    goto :goto_29

    :cond_60
    move-object v11, v2

    move-object v12, v3

    move v0, v4

    move/from16 v21, v5

    move-object/from16 v6, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object/from16 v5, v32

    move-object v2, v1

    move-object/from16 v1, p0

    goto/16 :goto_1c

    :cond_61
    move-object v11, v2

    move-object v12, v3

    move-object/from16 v6, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object/from16 v5, v32

    move-object v2, v1

    move-object/from16 v1, p0

    goto/16 :goto_1c

    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    :catch_5
    move-exception v0

    goto :goto_2d

    :catch_6
    move-exception v0

    goto :goto_2b

    :catch_7
    move-exception v0

    goto :goto_2a

    :catch_8
    move-exception v0

    move-object/from16 v26, v3

    :goto_2a
    move-object/from16 v29, v4

    :goto_2b
    move-object/from16 v32, v5

    goto :goto_2d

    :cond_63
    move-object/from16 v25, v6

    const/4 v0, 0x1

    goto/16 :goto_2f

    :catch_9
    move-exception v0

    goto :goto_2c

    :catch_a
    move-exception v0

    move-object/from16 v24, v2

    :goto_2c
    move-object/from16 v26, v3

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move-object/from16 v25, v6

    :goto_2d
    invoke-static {}, Lkwp;->e()Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object v1, Loah;->n:Loah;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    check-cast v1, Lnwp;

    iget-object v2, v7, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_64
    iget-object v3, v1, Lnwp;->b:Lnws;

    check-cast v3, Loah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Loah;->a:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v3, Loah;->a:I

    iput-object v2, v3, Loah;->b:Ljava/lang/String;

    sget-object v2, Lksc;->e:Lnaa;

    iget-object v3, v7, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lnaa;->f(Landroid/content/Context;)I

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_65
    iget-object v3, v1, Lnwp;->b:Lnws;

    check-cast v3, Loah;

    iget v4, v3, Loah;->a:I

    const/4 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v3, Loah;->a:I

    iput v2, v3, Loah;->c:I

    move-object/from16 v2, v32

    iget v2, v2, Lkru;->a:I

    int-to-long v2, v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_66

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_66
    iget-object v4, v1, Lnwp;->b:Lnws;

    check-cast v4, Loah;

    iget v5, v4, Loah;->a:I

    const/4 v6, 0x4

    or-int/2addr v5, v6

    iput v5, v4, Loah;->a:I

    iput-wide v2, v4, Loah;->d:J

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_67

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_67
    iget-object v2, v1, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    iget v3, v2, Loah;->a:I

    const/16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, v2, Loah;->a:I

    const-wide/32 v3, -0x79209ddf

    iput-wide v3, v2, Loah;->e:J

    move-object/from16 v2, v29

    array-length v2, v2

    int-to-long v2, v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_68

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_68
    iget-object v4, v1, Lnwp;->b:Lnws;

    check-cast v4, Loah;

    iget v5, v4, Loah;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Loah;->a:I

    iput-wide v2, v4, Loah;->f:J

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_69
    iget-object v2, v1, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    const/4 v3, 0x5

    invoke-static {v3}, Lkwp;->x(I)I

    move-result v3

    iput v3, v2, Loah;->h:I

    iget v3, v2, Loah;->a:I

    const/16 v4, 0x40

    or-int/2addr v3, v4

    iput v3, v2, Loah;->a:I

    sget-object v2, Lohd;->a:Lohd;

    invoke-virtual {v2}, Lohd;->b()Lohe;

    move-result-object v2

    invoke-interface {v2}, Lohe;->g()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-static {v0}, Lktf;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lkrw;->b:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lktf;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2e

    :cond_6a
    const-string v3, ""

    :goto_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6b
    iget-object v3, v1, Lnwp;->b:Lnws;

    check-cast v3, Loah;

    iget v4, v3, Loah;->a:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v3, Loah;->a:I

    iput-object v2, v3, Loah;->m:Ljava/lang/String;

    :cond_6c
    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Loah;

    invoke-static {v7}, Lkte;->a(Lkrw;)Lkte;

    move-result-object v2

    invoke-virtual {v2, v1}, Lkte;->b(Loah;)Z

    move-result v2

    if-eqz v2, :cond_6d

    move-object/from16 v3, v26

    check-cast v3, Lmqt;

    iget-object v2, v3, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Lksx;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lksx;->a(Loah;Lmqp;)V

    const/4 v0, 0x0

    goto :goto_2f

    :cond_6d
    const/4 v0, 0x0

    :goto_2f
    invoke-static {}, Lohg;->b()V

    sget-object v1, Lohd;->a:Lohd;

    invoke-virtual {v1}, Lohd;->b()Lohe;

    move-result-object v1

    invoke-interface {v1}, Lohe;->o()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v2, Ljbv;

    or-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljbv;-><init>(Z)V

    move-object/from16 v1, v25

    iput-object v2, v1, Ljbj;->i:Ljbv;

    goto :goto_30

    :catchall_3
    move-exception v0

    :try_start_19
    monitor-exit v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    throw v0

    :cond_6e
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_6f
    move-object/from16 v24, v2

    move-object v1, v6

    :goto_30
    move-object v6, v1

    goto :goto_31

    :catch_b
    move-exception v0

    move-object/from16 v24, v2

    const-string v1, "ClearcutLoggerApiImpl"

    const-string v2, "Error building the LogEventParcelable."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    :goto_31
    if-nez v6, :cond_70

    const-string v0, "MessageProducer"

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Ljec;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_70
    move-object/from16 v2, p0

    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljbs;

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-static {v1, v3}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v1, v6}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcbe;->A(ILandroid/os/Parcel;)V
    :try_end_1a
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_c

    invoke-static {}, Ljcb;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void

    :catch_c
    move-exception v0

    goto :goto_32

    :catch_d
    move-exception v0

    :goto_32
    const-string v1, "ClearcutLoggerApiImpl"

    const-string v3, "logEvent exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljcb;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    throw v0

    :catch_e
    move-exception v0

    const-string v1, "ClearcutLoggerApiImpl"

    const-string v3, "Log event caused a TransactionTooLargeException"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljbt;

    iget-object v1, v6, Ljbj;->a:Ljbw;

    iget-object v1, v1, Ljbw;->f:Ljava/lang/String;

    const/16 v3, 0x791c

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Ljbt;-><init>(Ljava/lang/String;II)V

    iget-object v1, v2, Ljbo;->a:Ljbp;

    new-instance v3, Ljbl;

    new-array v5, v4, [Ljbt;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljbl;-><init>(Ljava/util/List;)V

    iget-object v0, v3, Ljbl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Ljpw;->b(Ljava/lang/Object;)Ljot;

    return-void

    :cond_71
    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v0

    new-instance v4, Ljhs;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljhs;-><init>(Ljbl;I)V

    iput-object v4, v0, Ljfl;->a:Ljfh;

    new-array v3, v5, [Ljca;

    sget-object v4, Ljbh;->a:Ljca;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iput-object v3, v0, Ljfl;->b:[Ljca;

    invoke-virtual {v0}, Ljfl;->b()V

    invoke-virtual {v0}, Ljfl;->a()Ljfm;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljde;->j(Ljfm;)V

    return-void

    :catch_f
    move-exception v0

    move-object v2, v1

    const-string v1, "ClearcutLoggerApiImpl"

    const-string v3, "derived ClearcutLogger.EventModifier "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "EventModifier"

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljec;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
