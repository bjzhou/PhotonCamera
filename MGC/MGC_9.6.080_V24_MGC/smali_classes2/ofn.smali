.class public final Lofn;
.super Lohz;
.source "PG"


# instance fields
.field final synthetic a:Lofo;

.field private final e:Loev;


# direct methods
.method public constructor <init>(Lofo;Loev;Lohh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Loey;->m:Ljava/util/List;

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
    iput-object p2, p0, Lofn;->e:Loev;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lofn;->a:Lofo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p3}, Lohz;-><init>(Lohh;)V

    goto/32 :goto_1

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
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lohn;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop
.end method

.method protected final synthetic b(Logu;)V
    .locals 29

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v9, v8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_2
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v8, :cond_0

    nop

    goto/32 :goto_104

    nop

    :cond_0
    :goto_5
    goto/32 :goto_103

    nop

    nop

    nop

    :goto_6
    move-object v9, v0

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v4, 0x791c

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_9
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_b
    iget-object v2, v2, Lofx;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v10, v4, Lpun;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Ltvj;->a:Ltvj;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_11
    iget-object v0, v3, Lpux;->b:Lpur;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v10, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v9, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x0

    nop

    :goto_15
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_17

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    const-string v11, "AbstractClearcutLogger"

    nop

    nop

    nop

    nop

    const-string v12, "This can\'t happen."

    nop

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    monitor-exit v8

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit v8

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    nop

    nop

    :cond_1
    :goto_18
    sget v19, Loeu;->a:I

    nop

    nop

    nop

    nop

    nop

    move-object v0, v4

    nop

    nop

    nop

    check-cast v0, Loex;

    nop

    iget-object v0, v0, Loex;->h:Ljava/lang/String;

    nop

    move-object v8, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Loex;

    nop

    nop

    nop

    nop

    iget-object v8, v8, Loex;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    move-object v11, v4

    nop

    nop

    nop

    check-cast v11, Loex;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Loex;->a:Loeu;

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Loey;

    nop

    nop

    iget-object v11, v11, Loey;->j:Lofi;

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lofj;->b:Lofj;

    nop

    invoke-virtual {v11, v12}, Lofi;->a(Lofj;)Z

    move-result v22

    nop

    nop

    sget-object v12, Lofi;->b:Lofi;

    nop

    invoke-virtual {v11, v12}, Lofi;->equals(Ljava/lang/Object;)Z

    move-result v24

    nop

    nop

    nop

    nop

    sget-object v12, Lofi;->a:Lofi;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Lofi;->equals(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    if-eqz v12, :cond_2

    nop

    nop

    nop

    move/from16 v28, v9

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    :cond_2
    iget-object v11, v11, Lofi;->d:Lryy;

    nop

    nop

    nop

    invoke-virtual {v11}, Lryy;->em()Lscp;

    move-result-object v11

    nop

    nop

    nop

    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_3

    nop

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Lofj;

    nop

    nop

    nop

    nop

    nop

    iget v12, v12, Lofj;->e:I

    nop

    nop

    not-int v12, v12

    nop

    nop

    nop

    nop

    and-int/2addr v10, v12

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    move/from16 v28, v10

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v26, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v27, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v20, -0x1

    nop

    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v17, v6

    nop

    nop

    nop

    move-object/from16 v18, v7

    nop

    nop

    nop

    nop

    move-object/from16 v21, v8

    nop

    nop

    move-object/from16 v23, v0

    nop

    nop

    nop

    invoke-direct/range {v17 .. v28}, Lofx;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;ZILjava/lang/Integer;ZI)V

    invoke-virtual {v3}, Ltis;->h()[B

    move-result-object v20

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_122

    nop

    :goto_1c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v10, v6, Ltub;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v5, Ltuc;

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput-object v3, v4, v9

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

    :goto_20
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    :cond_4
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_21
    const/4 v7, 0x0

    nop

    :try_start_2
    invoke-static {v7}, Loeu;->d(Ljava/util/ArrayList;)[I

    move-result-object v21

    nop

    nop

    nop

    nop

    nop

    move-object v0, v4

    nop

    check-cast v0, Loex;

    nop

    nop

    nop

    iget-object v0, v0, Loex;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    sget-object v8, Loeu;->c:[Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, [Ljava/lang/String;

    nop

    move-object/from16 v22, v0

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    :cond_5
    move-object/from16 v22, v7

    nop

    nop

    nop

    :goto_22
    move-object v0, v4

    nop

    check-cast v0, Loex;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Loex;->d:Ljava/util/ArrayList;

    nop

    nop

    invoke-static {v0}, Loeu;->d(Ljava/util/ArrayList;)[I

    move-result-object v23

    nop

    nop

    nop

    nop

    move-object v0, v4

    nop

    nop

    check-cast v0, Loex;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Loex;->e:Ljava/util/ArrayList;

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    sget-object v8, Loeu;->b:[Lopl;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, [Lopl;

    nop

    nop

    move-object/from16 v24, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    move-object/from16 v24, v7

    nop

    nop

    nop

    :goto_23
    move-object v0, v4

    nop

    nop

    nop

    nop

    check-cast v0, Loex;

    nop

    nop

    iget-object v0, v0, Loex;->f:Ljava/util/Set;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    sget-object v8, Loeu;->c:[Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v0, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, [Ljava/lang/String;

    nop

    move-object/from16 v25, v0

    nop

    goto :goto_24

    nop

    nop

    :cond_7
    move-object/from16 v25, v7

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, v3, Ltty;->e:I

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    move-object/from16 v18, v6

    nop

    move-object/from16 v19, v3

    nop

    nop

    move/from16 v26, v0

    nop

    nop

    nop

    invoke-direct/range {v17 .. v26}, Lofg;-><init>(Lofx;Ltty;[B[I[Ljava/lang/String;[I[Lopl;[Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_25
    if-nez v10, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_8
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_56

    nop

    nop

    :goto_27
    :try_start_3
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_a

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Ltvm;->b()Lrgw;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    and-int/2addr v11, v8

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v11, :cond_9

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v9, v5, v12}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_2f
    if-eq v11, v6, :cond_a

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_a
    :goto_30
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v4, Loev;->a:Loeu;

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v7, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_b
    :try_start_4
    new-instance v0, Lofm;

    nop

    nop

    invoke-direct {v0, v1}, Lofm;-><init>(Lofn;)V

    invoke-virtual {v2}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lofs;

    nop

    nop

    nop

    invoke-virtual {v2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v3, v7}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4, v3}, Lfum;->B(ILandroid/os/Parcel;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Lofo;->a(Lofk;)V

    :goto_36
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v11, v9, v12}, Lowf;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_38
    if-eqz v5, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_e2

    nop

    nop

    :goto_3a
    add-long v17, v17, v19

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_3b
    iget-object v11, v11, Lofv;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_3c
    if-nez v10, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_28

    nop

    nop

    :goto_3d
    goto/16 :goto_41

    nop

    nop

    :catch_2
    move-exception v0

    nop

    :try_start_5
    const-string v12, "GoogleCertificates"

    nop

    nop

    nop

    nop

    const-string v13, "Failed to get Google certificates from remote"

    nop

    nop

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_e
    :try_start_7
    iget-object v0, v8, Logs;->c:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x40

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    nop
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v11, v8, Logs;->c:Landroid/content/Context;

    nop

    invoke-static {v11}, Logr;->b(Landroid/content/Context;)Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v0, :cond_f

    nop

    invoke-static {}, Logq;->a()Logq;

    move-result-object v0

    nop

    nop

    nop

    goto/16 :goto_3f

    nop

    nop

    :cond_f
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    if-eqz v12, :cond_12

    nop

    nop

    nop

    nop

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    array-length v12, v12

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v12, v13, :cond_10

    nop

    nop

    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    new-instance v12, Logj;

    nop

    nop

    nop

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    aget-object v13, v13, v9

    nop

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v13

    nop

    nop

    invoke-direct {v12, v13}, Logj;-><init>([B)V

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v13, v12, v11, v9}, Logm;->c(Ljava/lang/String;Loks;ZZ)Logq;

    move-result-object v11

    nop

    nop

    nop

    iget-boolean v14, v11, Logq;->b:Z

    nop

    nop

    nop

    if-eqz v14, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    nop

    if-eqz v14, :cond_11

    nop

    nop

    nop

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x2

    nop

    if-eqz v0, :cond_11

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    invoke-static {v13, v12, v9, v14}, Logm;->c(Ljava/lang/String;Loks;ZZ)Logq;

    move-result-object v0

    nop

    nop

    nop

    iget-boolean v0, v0, Logq;->b:Z

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    invoke-static {}, Logq;->a()Logq;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    move-object v0, v11

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_12
    :goto_3e
    invoke-static {}, Logq;->a()Logq;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_3f
    iget-boolean v11, v0, Logq;->b:Z

    nop

    nop

    nop

    if-eqz v11, :cond_13

    nop

    iput-object v10, v8, Logs;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto :goto_40

    nop

    nop

    nop

    nop

    :catch_3
    new-instance v0, Logq;

    nop

    nop

    invoke-direct {v0, v9}, Logq;-><init>(Z)V

    :cond_13
    :goto_40
    iget-boolean v0, v0, Logq;->b:Z

    nop

    nop

    if-nez v0, :cond_14

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->mSoBYLXXITfr:Ljava/lang/String;

    nop

    nop

    const-string v4, "Phenotype flags were not sycned because package was not Google Signed."

    nop

    nop

    nop

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    nop

    nop

    nop

    nop

    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    nop

    nop

    :cond_14
    invoke-static {v4, v6}, Lpuw;->a(Lpun;Lscn;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_43
    monitor-enter v11

    nop

    nop

    nop

    :try_start_9
    iget-object v7, v11, Lowf;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v11, v15, v7, v12, v3}, Lowf;->b(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v11

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_44
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v0, Ltty;->f:Ltjj;

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_46
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_47
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    rem-long v17, v13, v11

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v0, Ltvj;->a:Ltvj;

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v11}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_4e
    invoke-virtual {v3, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eq v11, v10, :cond_15

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_15
    :try_start_a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v11, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    nop

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    sput v0, Loeu;->a:I

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v9, Lofv;->c:Lj$/util/concurrent/ConcurrentHashMap;

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

    :goto_51
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v9, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :cond_16
    goto/32 :goto_d2

    nop

    nop

    :goto_53
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v3}, Lolx;->ax([B)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_55
    goto/16 :goto_102

    nop

    nop

    nop

    nop

    :catch_4
    :goto_56
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v9, v9, Lofv;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Ltvj;->b()Ltvk;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_59
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_5b
    const-string v0, "EventModifier"

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_5d
    const/16 v3, 0xa

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_5e
    if-gez v3, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    rem-long/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_18
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v7, Lpuw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_62
    check-cast v6, Ltub;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_b
    sget-object v0, Lpuq;->j:Lpuq;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_19

    nop

    nop

    nop

    new-instance v0, Lpuq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lpuq;-><init>()V

    sput-object v0, Lpuq;->j:Lpuq;

    nop

    :cond_19
    monitor-exit v4

    nop

    goto/16 :goto_12c

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit v4

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto :goto_74

    nop

    nop

    :goto_68
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v6, v6, Ltkd;->b:Ltkg;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v1, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_6b
    if-eqz v0, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_149

    nop

    nop

    :goto_6c
    iget-object v6, v4, Loev;->l:Ltkd;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object v0, Lpuq;->j:Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_6e
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_70
    iget v6, v6, Ltty;->e:I

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    nop

    :goto_72
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v3}, Lolx;->ax([B)J

    move-result-wide v7

    nop

    :goto_74
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_75
    const-string v2, "ClearcutLoggerApiImpl"

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_76
    check-cast v4, Loex;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_78
    invoke-static {v11}, Lpvb;->c(Landroid/content/Context;)Z

    move-result v12

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_79
    and-long v6, v7, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_7a
    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_7b
    invoke-static {v9}, Lowf;->c(Landroid/content/ContentResolver;)V

    goto/32 :goto_110

    nop

    nop

    :goto_7c
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v3, :cond_1c

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v1, v1, Lofx;->f:Ljava/lang/String;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    sget-object v11, Lovy;->a:Lowf;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_82
    check-cast v9, Lqvy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_84
    invoke-static {}, Lofu;->b()Lofu;

    move-result-object v2

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v11, Lqdb;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    cmp-long v3, v7, v13

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_88
    iget-wide v9, v6, Ltub;->e:J

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_9d

    nop

    nop

    :cond_1d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_131

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    :try_start_c
    monitor-exit v11

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance v5, Ljava/util/ArrayList;

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

    :goto_8c
    invoke-direct {v3, v1, v4, v5}, Loft;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_8d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v10, Ltub;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_90
    check-cast v6, Ltty;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_91
    const-wide v13, 0x7fffffffffffffffL

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

    nop

    :goto_92
    iget-object v0, v0, Lpur;->a:Lpul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_93
    monitor-enter v11

    nop

    :try_start_d
    invoke-virtual {v11, v9}, Lowf;->a(Landroid/content/ContentResolver;)V

    iget-object v15, v11, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v3, v11, Lowf;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v12, v8}, Lowf;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    monitor-exit v11

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_94
    const-string v0, "MessageProducer"

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_95
    new-array v4, v5, [Loft;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_96
    sget-object v9, Lofv;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_98
    iget-object v2, v7, Lofg;->a:Lofx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    new-instance v2, Lofk;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v0, v0, Loeu;->d:Loff;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    check-cast v2, Lofp;

    nop

    nop

    :try_start_e
    iget-object v4, v1, Lofn;->e:Loev;

    nop

    nop

    nop

    move-object v0, v4

    nop

    nop

    check-cast v0, Loex;

    nop

    nop

    nop

    iget-object v0, v0, Loex;->a:Loeu;

    nop

    check-cast v0, Loey;

    nop

    nop

    iget-object v0, v0, Loey;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Loew;

    nop

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    check-cast v6, Loex;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Loew;->a(Loex;)V

    goto :goto_9c

    nop

    :cond_1e
    sget-object v0, Loey;->m:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_1d

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Loew;

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    nop

    check-cast v6, Loex;

    nop

    invoke-interface {v5, v6}, Loew;->a(Loex;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v3, v2, v4, v5}, Loft;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    instance-of v2, v0, Landroid/os/TransactionTooLargeException;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_a0
    if-eqz v9, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_a2
    goto/16 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const-string v3, "logEvent exception"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a5
    const/16 v4, 0x3eb

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a6
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_a7
    throw v0

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    :try_start_f
    monitor-exit v11

    nop

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_a9
    if-eqz v12, :cond_20

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

    :cond_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_aa
    const-string v4, "Error building the LogEventParcelable."

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, v5, Lofg;->l:Ltty;

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-direct {v0, v3}, Lofw;-><init>(Z)V

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_ae
    if-gtz v3, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v1, v7, Lofg;->a:Lofx;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_b0
    throw v0

    nop

    :goto_b1
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v1, v2}, Lohz;->g(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_f7

    nop

    nop

    :goto_b3
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    const-class v4, Lpuq;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_b5
    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    :goto_b6
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v0}, Ltvk;->a()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_b8
    const/4 v9, 0x0

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v5, :cond_22

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

    :cond_22
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v1}, Lofu;->a()Lofk;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const-string v3, "derived ClearcutLogger.EventModifier "

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {}, Lofu;->b()Lofu;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget v11, v10, Ltub;->b:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_134

    nop

    nop

    nop

    :goto_c0
    :try_start_10
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    sput-object v0, Lqvl;->b:Landroid/content/Context;

    nop
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/32 :goto_132

    nop

    nop

    :goto_c1
    check-cast v9, Lofv;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_c2
    move-wide v7, v13

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_c3
    iget-object v0, v1, Lofn;->a:Lofo;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_c4
    if-eqz v0, :cond_23

    nop

    nop

    goto/32 :goto_12c

    nop

    :cond_23
    goto/32 :goto_b4

    nop

    nop

    :goto_c5
    if-gez v3, :cond_24

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_5f

    nop

    nop

    :goto_c6
    array-length v10, v9

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_c7
    check-cast v9, Lqvy;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    cmp-long v3, v9, v13

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    new-instance v3, Loft;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    sget-boolean v0, Lpuw;->a:Z

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    sget-object v12, Lofv;->e:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    return-void

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_cd
    goto/16 :goto_152

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-gez v3, :cond_25

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_f4

    nop

    nop

    :goto_d0
    new-instance v0, Lofw;

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

    :goto_d1
    rem-long/2addr v6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_d2
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    throw v0

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_d7
    sput-object v3, Lofv;->e:Ljava/lang/Long;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    sget-object v3, Lpuq;->j:Lpuq;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_da
    return-void

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_db
    sget-object v0, Ltvm;->a:Ltvm;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_dc
    if-eqz v2, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_dd
    cmp-long v3, v11, v13

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_de
    sget-object v3, Lofv;->e:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_df
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_cb

    nop

    nop

    :goto_e1
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v1, v1, Lofn;->a:Lofo;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iput-object v0, v5, Lofg;->i:Lofw;

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_e4
    monitor-enter v7

    nop

    nop

    nop

    nop

    nop

    :try_start_11
    sget-boolean v0, Lpuw;->a:Z

    nop

    if-nez v0, :cond_29

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    sput-boolean v8, Lpuw;->a:Z

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lqvl;->a:Ljava/lang/Object;

    nop

    monitor-enter v8

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    sget-object v0, Lqvl;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    rem-long v7, v17, v11

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-direct {v2, v3}, Lofk;-><init>(Ljava/util/List;)V

    goto/32 :goto_12e

    nop

    nop

    :goto_e8
    invoke-virtual {v2, v3}, Lofu;->c(Loft;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_e9
    cmp-long v3, v7, v9

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_ea
    const-string v3, "Log event caused a TransactionTooLargeException"

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_eb
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

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

    :goto_ec
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_ed
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_ee
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object v3, v4, Loex;->n:Lpux;

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v9}, Lqvy;->b()Ljava/lang/Object;

    move-result-object v5

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

    :goto_f2
    move-object v9, v12

    nop

    :goto_f3
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_f4
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-nez v0, :cond_27

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_f7
    return-void

    nop

    :goto_f8
    goto/32 :goto_c

    nop

    nop

    :goto_f9
    iget-object v1, v1, Lofo;->a:Lrtm;

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_fb
    goto/32 :goto_f8

    nop

    nop

    :goto_fc
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v1, v1, Lofn;->a:Lofo;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v0}, Ltvj;->b()Ltvk;

    move-result-object v0

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_ff
    if-nez v6, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const-string v2, "ClearcutLoggerApiImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_101
    move-wide v8, v13

    nop

    :goto_102
    goto/32 :goto_43

    nop

    nop

    :goto_103
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_9a

    nop

    nop

    :goto_105
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_107
    iget v11, v10, Ltub;->c:I

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_108
    new-instance v3, Loft;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_109
    move-object/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    goto :goto_10b

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_13
    monitor-exit v8

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v0

    nop

    nop

    nop

    nop

    :cond_29
    :goto_10b
    monitor-exit v7

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_b1

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto/32 :goto_b0

    nop

    nop

    :goto_10c
    sget-object v6, Lpup;->a:Lscn;

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_10d
    move-object v7, v5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-direct {v11, v8}, Lqdb;-><init>(I)V

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v1, v2}, Lohz;->g(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_cc

    nop

    nop

    :goto_110
    const-string v12, "android_id"

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_111
    goto/16 :goto_48

    nop

    :goto_112
    :try_start_15
    move-object v0, v4

    nop

    check-cast v0, Loex;

    nop

    iget-object v0, v0, Loex;->l:Ltkd;

    nop

    nop

    move-object v3, v4

    nop

    nop

    check-cast v3, Loex;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Loex;->m:Ltlq;

    nop

    nop

    invoke-interface {v3}, Ltlq;->f()Ltjj;

    move-result-object v3

    nop

    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_2a

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2a
    iget-object v0, v0, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ltty;

    nop

    nop

    iget v5, v0, Ltty;->b:I

    nop

    nop

    nop

    or-int/lit16 v5, v5, 0x800

    nop

    nop

    nop

    nop

    iput v5, v0, Ltty;->b:I

    nop

    nop

    nop

    iput-object v3, v0, Ltty;->f:Ltjj;

    nop

    nop

    nop

    nop

    nop

    move-object v0, v4

    nop

    nop

    nop

    nop

    check-cast v0, Loex;

    nop

    nop

    iget-object v0, v0, Loex;->l:Ltkd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Ltty;

    nop

    nop

    nop

    nop

    new-instance v5, Lofg;

    nop

    nop

    nop

    new-instance v6, Lofx;

    nop

    nop

    nop

    nop

    nop

    move-object v0, v4

    nop

    check-cast v0, Loex;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Loex;->a:Loeu;

    nop

    nop

    nop

    nop

    move-object v7, v0

    nop

    nop

    check-cast v7, Loey;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Loey;->i:Ljava/lang/String;

    nop

    nop

    check-cast v0, Loey;

    nop

    nop

    iget-object v0, v0, Loey;->f:Landroid/content/Context;

    nop

    nop

    nop

    sget v8, Loeu;->a:I

    nop

    nop

    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v10, :cond_1

    nop

    nop

    const-class v8, Loeu;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v8

    nop

    nop

    nop
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_7

    :try_start_16
    sget v11, Loeu;->a:I

    nop

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_113
    sget-object v10, Ltuc;->a:Ltuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_114
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_115
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_116
    invoke-interface {v0}, Ltvk;->c()V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    move-object v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_118
    goto/16 :goto_15

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_119
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    if-lez v0, :cond_2b

    nop

    goto/32 :goto_fc

    nop

    nop

    :cond_2b
    goto/32 :goto_fb

    nop

    :goto_11b
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    if-nez v0, :cond_2c

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :cond_2c
    :try_start_17
    monitor-exit v8

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    if-eqz v12, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_11e
    const-string v3, "ClearcutLoggerApiImpl"

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_11f
    move-object v11, v0

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_120
    if-nez v11, :cond_2e

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v5, v5, Ltuc;->b:Ltkv;

    nop

    nop

    nop

    nop

    nop

    :goto_122
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_123
    sget-object v9, Lofv;->a:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_126
    sput-object v9, Lofv;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :goto_127
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-direct {v12, v9, v5, v10, v11}, Lqvt;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/Object;Lqvv;)V

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j(Lohn;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    sget-object v9, Lofv;->b:Lqvw;

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_12b
    throw v0

    nop

    nop

    nop

    nop

    :goto_12c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v12, v15}, Lpic;->w(Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v1, v2}, Lofo;->a(Lofk;)V

    :goto_12f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_130
    sput-object v3, Lofv;->e:Ljava/lang/Long;

    nop

    :goto_131
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_132
    goto :goto_133

    nop

    nop

    nop

    nop

    :catch_8
    :try_start_18
    invoke-static {}, Lqvl;->c()V

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Lqvl;->c:Lrtm;

    nop

    invoke-interface {v11}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Ljava/util/concurrent/Executor;

    nop

    const-string v12, "context.getApplicationContext() yielded NullPointerException"

    nop

    nop

    nop

    nop

    new-array v13, v9, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v11, v12, v13}, Lqrf;->d(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_133
    monitor-exit v8

    nop

    nop

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :goto_134
    :try_start_19
    invoke-static {v10}, Lqvy;->f(Landroid/content/Context;)V

    invoke-static {v10}, Lpuq;->t(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_29

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Ltvj;->a:Ltvj;

    nop

    invoke-virtual {v0}, Ltvj;->b()Ltvk;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0}, Ltvk;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    invoke-static {v10}, Logs;->a(Landroid/content/Context;)Logs;

    move-result-object v8

    nop

    nop

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    sget-object v0, Logs;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    if-nez v10, :cond_2f

    nop

    nop

    nop

    new-instance v0, Logq;

    nop

    invoke-direct {v0, v9}, Logq;-><init>(Z)V

    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :cond_2f
    sget-object v0, Logs;->b:Ljava/util/Set;

    nop

    iget-object v0, v8, Logs;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_30

    nop

    nop

    nop

    sget-object v0, Logq;->a:Logq;

    nop

    nop

    nop

    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_30
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    invoke-static {}, Logm;->b()V

    sget-object v0, Logm;->d:Lokw;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lokw;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1a
    .catch Lomk; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :try_start_1b
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v8, Logs;->c:Landroid/content/Context;

    nop

    nop

    invoke-static {v0}, Logr;->b(Landroid/content/Context;)Z

    move-result v18

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    nop

    nop
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    sget-object v0, Logm;->c:Landroid/content/Context;

    nop

    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :try_start_1d
    invoke-static {}, Logm;->b()V
    :try_end_1d
    .catch Lomk; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :try_start_1e
    new-instance v0, Logn;

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Logm;->c:Landroid/content/Context;

    nop

    nop

    nop

    new-instance v13, Lomd;

    nop

    nop

    nop

    invoke-direct {v13, v12}, Lomd;-><init>(Ljava/lang/Object;)V

    const/16 v21, 0x0

    nop

    nop

    const/16 v22, 0x1

    nop

    const/16 v19, 0x0

    nop

    move-object/from16 v16, v0

    nop

    nop

    move-object/from16 v17, v10

    nop

    nop

    nop

    move-object/from16 v20, v13

    nop

    invoke-direct/range {v16 .. v22}, Logn;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    sget-object v12, Logm;->d:Lokw;

    nop

    nop

    nop

    invoke-virtual {v12, v0}, Lokw;->e(Logn;)Logo;

    move-result-object v0

    nop
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :try_start_20
    iget-boolean v12, v0, Logo;->a:Z

    nop

    if-eqz v12, :cond_31

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Logo;->b()V

    new-instance v0, Logq;

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    invoke-direct {v0, v12}, Logq;-><init>(Z)V

    goto :goto_135

    nop

    nop

    nop

    nop

    nop

    :cond_31
    iget-object v12, v0, Logo;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Logo;->a()I

    move-result v12

    nop

    const/4 v13, 0x4

    nop

    if-ne v12, v13, :cond_32

    nop

    new-instance v12, Landroid/content/pm/PackageManager$NameNotFoundException;

    nop

    nop

    nop

    invoke-direct {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    :cond_32
    invoke-virtual {v0}, Logo;->b()V

    invoke-virtual {v0}, Logo;->a()I

    new-instance v0, Logq;

    nop

    nop

    nop

    invoke-direct {v0, v9}, Logq;-><init>(Z)V

    goto :goto_135

    nop

    nop

    nop

    nop

    nop

    :catch_9
    move-exception v0

    nop

    const-string v12, "GoogleCertificates"

    nop

    nop

    const-string v13, "Failed to get Google certificates from remote"

    nop

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Logq;->b()Logq;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_135

    nop

    nop

    nop

    nop

    nop

    :catch_a
    move-exception v0

    nop

    nop

    move-object v12, v0

    nop

    nop

    nop

    const-string v0, "GoogleCertificates"

    nop

    const-string v13, "Failed to get Google certificates from remote"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v12}, Lomk;->getMessage()Ljava/lang/String;

    invoke-static {}, Logq;->b()Logq;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :goto_135
    :try_start_21
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_3f

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    nop

    nop

    nop
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_136
    goto :goto_13b

    nop

    :goto_137
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    const-string v2, "ClearcutLoggerApiImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_139
    iget-object v0, v0, Lofo;->a:Lrtm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    throw v0

    nop

    nop

    :goto_13b
    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_13c
    iget-wide v11, v6, Ltub;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    new-instance v12, Lqvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    check-cast v11, Lofv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    const-string v15, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    if-eqz v9, :cond_33

    nop

    nop

    goto/32 :goto_f3

    nop

    :cond_33
    goto/32 :goto_f2

    nop

    nop

    :goto_142
    invoke-virtual {v0}, Ltjj;->t()[B

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v0}, Lpul;->a()V

    :goto_144
    goto/32 :goto_db

    nop

    nop

    :goto_145
    invoke-virtual {v3, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_146
    add-long v17, v17, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_147
    add-int/2addr v10, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_148
    if-eqz v8, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_34
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget-object v4, v3, Lpux;->a:Lpun;

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_14a
    iget-object v5, v4, Loev;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_14b
    if-nez v11, :cond_35

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    if-eqz v9, :cond_36

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    :cond_36
    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_14e
    iget-object v0, v1, Lofn;->a:Lofo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_14f
    if-eqz v12, :cond_37

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :cond_37
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_150
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_151
    move-object v5, v9

    nop

    nop

    :goto_152
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    sget-object v9, Lofv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_154
    goto/16 :goto_e6

    nop

    nop

    nop

    :goto_155
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    if-nez v12, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    :cond_38
    :goto_157
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_158
    const-wide/16 v19, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_159
    sget-object v12, Lofv;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_15a
    if-nez v3, :cond_39

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_15b
    if-nez v0, :cond_3a

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_3a
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_15c
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    invoke-super {p0, p1}, Lohz;->j(Lohn;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lohn;

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
