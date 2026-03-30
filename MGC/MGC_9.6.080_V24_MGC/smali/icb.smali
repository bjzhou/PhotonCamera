.class public Licb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Licg;
.implements Ljvy;
.implements Libo;
.implements Lpci;


# static fields
.field private static final i:Lsdb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

.field public e:Ljvz;

.field public f:Libn;

.field public g:Lich;

.field public final h:Lhoh;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Licb;->i:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-string v0, "icb"

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Landroid/content/Context;Lhoh;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Licb;->h:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Licb;->a:Landroid/content/Context;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 p2, 0x1

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

    :goto_4
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

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
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Licb;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Licb;->j:Ljava/util/Map;

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

    nop

    :goto_9
    const-string p1, "FaceFamiliarityProcessorVMImpl"

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    const-string p1, ""

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    goto :goto_a

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_1c
    sget-object p1, Lhmk;->d:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

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

    :goto_1e
    iput-object v0, p0, Licb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    if-ne p2, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm(J)V
    .locals 22

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    move-wide/from16 v2, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    :try_start_0
    invoke-interface {v2}, Lprw;->g()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v0, v1, Licb;->e:Ljvz;

    nop

    nop

    iget-object v4, v1, Licb;->f:Libn;

    nop

    iget-object v5, v1, Licb;->g:Lich;

    nop

    nop

    iget-object v6, v1, Licb;->d:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v6, :cond_2

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    move-object v3, v0

    nop

    nop

    nop

    :try_start_5
    invoke-interface {v2}, Lprw;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_6
    invoke-virtual {v5, v2, v3}, Lich;->a(J)Lsvr;

    move-result-object v7

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    goto/16 :goto_1e

    nop

    :cond_3
    invoke-interface {v0, v2, v3}, Ljvz;->d(J)Lprw;

    move-result-object v2

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

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

    :goto_10
    monitor-exit p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Lprv;

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getPixelStride()I

    move-result v9

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getRowStride()I

    move-result v10

    nop

    invoke-interface {v8}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Lprv;->getPixelStride()I

    move-result v12

    nop

    nop

    invoke-interface {v8}, Lprv;->getRowStride()I

    move-result v13

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    nop

    nop

    invoke-interface {v0}, Lprv;->getPixelStride()I

    move-result v17

    nop

    nop

    nop

    invoke-interface {v0}, Lprv;->getRowStride()I

    move-result v0

    nop

    nop

    invoke-interface {v2}, Lprw;->c()I

    move-result v19

    nop

    invoke-interface {v2}, Lprw;->b()I

    move-result v20

    nop

    nop

    nop

    nop

    nop

    move-object v7, v4

    nop

    nop

    nop

    move v8, v9

    nop

    nop

    nop

    nop

    move v9, v10

    nop

    nop

    nop

    nop

    move-object v10, v11

    nop

    nop

    nop

    nop

    move v11, v12

    nop

    move v12, v13

    nop

    nop

    move-object/from16 v13, v16

    nop

    nop

    nop

    nop

    nop

    move v4, v14

    nop

    nop

    nop

    nop

    nop

    move/from16 v14, v17

    nop

    nop

    nop

    nop

    nop

    move/from16 v21, v15

    nop

    move v15, v0

    nop

    nop

    nop

    move/from16 v16, v19

    nop

    nop

    nop

    move/from16 v17, v20

    nop

    nop

    invoke-virtual/range {v6 .. v18}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILtpo;)Ltpo;

    move-result-object v18

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    nop

    sget-object v0, Licb;->i:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    const-string v7, "Couldn\'t get planes for analysis."

    nop

    nop

    const/16 v8, 0x546

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v0, v6}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    sget-object v18, Ltpo;->a:Ltpo;

    nop

    goto :goto_13

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x1

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v0, v18

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ltpo;->g:Lton;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    sget-object v0, Lton;->a:Lton;

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v6, v0, Lton;->b:Ltkv;

    nop

    nop

    invoke-interface {v6}, Ltkv;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Llsc;->q:[Llsf;

    nop

    nop

    nop

    nop

    array-length v3, v3

    nop

    nop

    nop

    nop

    if-ne v6, v3, :cond_5

    nop

    move v15, v4

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_5
    move/from16 v15, v21

    nop

    nop

    :goto_14
    invoke-static {v15}, Lrrf;->x(Z)V

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v15, v21

    nop

    nop

    nop

    :goto_15
    iget-object v6, v0, Lton;->b:Ltkv;

    nop

    nop

    invoke-interface {v6}, Ltkv;->size()I

    move-result v6

    nop

    nop

    nop

    if-ge v15, v6, :cond_c

    nop

    nop

    nop

    iget-object v6, v0, Lton;->b:Ltkv;

    nop

    nop

    invoke-interface {v6, v15}, Ltkv;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Ltom;

    nop

    nop

    nop

    sget-object v7, Ltpv;->j:Ltlk;

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ltke;->i(Ltlk;)V

    iget-object v8, v6, Ltke;->m:Ltjx;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v7, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v9, Ltkf;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ltjx;->k(Ltkf;)Ljava/lang/Object;

    move-result-object v8

    nop

    if-nez v8, :cond_6

    nop

    iget-object v8, v7, Ltlk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v7, v8}, Ltlk;->b(Ljava/lang/Object;)V

    :goto_16
    check-cast v8, Ltpv;

    nop

    nop

    nop

    nop

    iget v7, v8, Ltpv;->b:I

    nop

    nop

    nop

    nop

    and-int/lit8 v7, v7, 0x40

    nop

    nop

    if-eqz v7, :cond_7

    nop

    move v7, v4

    nop

    nop

    goto :goto_17

    nop

    nop

    :cond_7
    move/from16 v7, v21

    nop

    nop

    :goto_17
    invoke-static {}, Licd;->a()Licc;

    move-result-object v9

    nop

    iget-wide v10, v6, Ltom;->j:J

    nop

    nop

    nop

    invoke-virtual {v9, v10, v11}, Licc;->d(J)V

    iget-wide v10, v6, Ltom;->k:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    iput-object v6, v9, Licc;->a:Lrss;

    nop

    nop

    nop

    iget v6, v8, Ltpv;->e:F

    nop

    nop

    invoke-virtual {v9, v6}, Licc;->c(F)V

    if-eqz v7, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v8, Ltpv;->i:Ltpw;

    nop

    nop

    if-nez v6, :cond_8

    nop

    nop

    sget-object v6, Ltpw;->a:Ltpw;

    nop

    nop

    nop

    :cond_8
    iget-object v6, v6, Ltpw;->c:Ltkl;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    :cond_9
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v6, v9, Licc;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_b

    nop

    iget-object v6, v8, Ltpv;->i:Ltpw;

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_a

    nop

    nop

    nop

    nop

    sget-object v6, Ltpw;->a:Ltpw;

    nop

    nop

    nop

    nop

    :cond_a
    iget v6, v6, Ltpw;->d:F

    nop

    goto :goto_19

    nop

    nop

    :cond_b
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v9, v6}, Licc;->b(F)V

    invoke-virtual {v9}, Licc;->a()Licd;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_c
    new-instance v4, Lsvr;

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v6

    nop

    invoke-direct {v4, v6, v7, v3}, Lsvr;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v5, v4}, Lich;->c(Lsvr;)V

    monitor-enter p0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, v1, Licb;->j:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/util/concurrent/Executor;

    nop

    new-instance v6, Libm;

    nop

    nop

    nop

    const/4 v7, 0x3

    nop

    invoke-direct {v6, v0, v4, v7}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    goto :goto_1d

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    move-object v2, v0

    nop

    nop

    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v3

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    :try_start_b
    sget-object v0, Licb;->i:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v2, 0x548

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v2, "No video framestore or metadata framestore attached"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    :try_start_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    nop

    :catchall_4
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/32 :goto_27

    nop

    nop

    :goto_24
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_1a

    nop

    :catch_1
    move-exception v0

    nop

    :try_start_e
    sget-object v5, Licb;->i:Lsdb;

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v5, 0x549

    nop

    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v5, "Cannot execute onFrequentFacesAvailable"

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_1a

    nop

    nop

    nop

    :cond_e
    monitor-exit p0

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_26
    :try_start_f
    invoke-interface {v2}, Lprw;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw v0

    nop

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_f
    goto/32 :goto_2

    nop

    nop

    :goto_2b
    if-nez v2, :cond_10

    nop

    goto/32 :goto_1e

    nop

    :cond_10
    :try_start_10
    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v7

    nop

    nop

    nop

    invoke-virtual {v4, v7, v8}, Libn;->a(J)Llsc;

    move-result-object v3

    nop

    if-nez v3, :cond_11

    nop

    nop

    nop

    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :cond_11
    iget-object v0, v1, Licb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    iget-object v7, v3, Llsc;->q:[Llsf;

    nop

    nop

    invoke-interface {v2}, Lprw;->c()I

    move-result v8

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    iget-object v9, v3, Llsc;->t:Landroid/graphics/Rect;

    nop

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    int-to-float v9, v9

    nop

    nop

    nop

    nop

    div-float/2addr v8, v9

    nop

    invoke-interface {v2}, Lprw;->b()I

    move-result v9

    nop

    int-to-float v9, v9

    nop

    nop

    nop

    nop

    iget-object v10, v3, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v9, v10

    nop

    nop

    nop

    sget-object v10, Ltpx;->a:Ltpx;

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_12

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_12
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    check-cast v11, Ltpx;

    nop

    nop

    nop

    nop

    nop

    iget v12, v11, Ltpx;->b:I

    nop

    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v12, v15

    nop

    nop

    nop

    nop

    nop

    iput v12, v11, Ltpx;->b:I

    nop

    nop

    iput-boolean v0, v11, Ltpx;->c:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    check-cast v0, Ltpx;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Ltpi;->a:Ltpi;

    nop

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    iget v11, v3, Llsc;->s:I

    nop

    rsub-int v11, v11, 0x168

    nop

    rem-int/lit16 v11, v11, 0x168

    nop

    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    if-nez v12, :cond_13

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_13
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ltpi;

    nop

    nop

    nop

    nop

    iget v13, v12, Ltpi;->b:I

    nop

    nop

    or-int/lit8 v13, v13, 0x4

    nop

    iput v13, v12, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v11, v12, Ltpi;->d:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v10

    nop

    check-cast v10, Ltpi;

    nop

    nop

    sget-object v11, Ltpo;->a:Ltpo;

    nop

    invoke-virtual {v11}, Ltkg;->m()Ltkb;

    move-result-object v11

    nop

    nop

    nop

    nop

    iget-wide v12, v3, Llsc;->c:J

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    if-nez v14, :cond_14

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_14
    iget-object v14, v11, Ltkb;->b:Ltkg;

    nop

    check-cast v14, Ltpo;

    nop

    nop

    nop

    nop

    nop

    iget v15, v14, Ltpo;->b:I

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v15, v4

    nop

    nop

    iput v15, v14, Ltpo;->b:I

    nop

    nop

    iput-wide v12, v14, Ltpo;->d:J

    nop

    nop

    nop

    invoke-static {v3, v8, v9}, Lhst;->e(Llsc;FF)Lton;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    if-nez v9, :cond_15

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_15
    iget-object v9, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v12, v9

    nop

    nop

    nop

    check-cast v12, Ltpo;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v12, Ltpo;->g:Lton;

    nop

    nop

    nop

    nop

    iget v8, v12, Ltpo;->b:I

    nop

    nop

    or-int/lit8 v8, v8, 0x40

    nop

    nop

    iput v8, v12, Ltpo;->b:I

    nop

    nop

    iget-boolean v8, v3, Llsc;->r:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_16

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_16
    iget-object v9, v11, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v12, v9

    nop

    nop

    check-cast v12, Ltpo;

    nop

    nop

    nop

    iget v13, v12, Ltpo;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v13, v13, 0x200

    nop

    nop

    nop

    nop

    nop

    iput v13, v12, Ltpo;->b:I

    nop

    nop

    nop

    iput-boolean v8, v12, Ltpo;->h:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_17

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_17
    iget-object v8, v11, Ltkb;->b:Ltkg;

    nop

    move-object v9, v8

    nop

    nop

    nop

    check-cast v9, Ltpo;

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v9, Ltpo;->f:Ltpi;

    nop

    nop

    iget v10, v9, Ltpo;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x20

    nop

    nop

    nop

    nop

    iput v10, v9, Ltpo;->b:I

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_18

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_18
    iget-object v8, v11, Ltkb;->b:Ltkg;

    nop

    check-cast v8, Ltpo;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v8, Ltpo;->m:Ltpx;

    nop

    nop

    nop

    iget v0, v8, Ltpo;->b:I

    nop

    nop

    const/high16 v9, 0x200000

    nop

    nop

    nop

    nop

    or-int/2addr v0, v9

    nop

    nop

    nop

    iput v0, v8, Ltpo;->b:I

    nop

    invoke-virtual {v11}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    move-object/from16 v18, v0

    nop

    check-cast v18, Ltpo;

    nop

    nop

    nop

    nop

    array-length v0, v7

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_2c
    if-lez v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_7

    nop
.end method


# virtual methods
.method public final declared-synchronized b(Ljvz;Libn;Lich;Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    const v0, 0x15

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Licb;->e:Ljvz;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-ne v0, p1, :cond_2

    nop

    iput-object v1, p0, Licb;->e:Ljvz;

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Licb;->f:Libn;

    nop

    nop

    nop

    nop

    nop

    if-ne p1, p2, :cond_3

    nop

    iput-object v1, p0, Licb;->f:Libn;

    nop

    nop

    nop

    :cond_3
    iget-object p1, p0, Licb;->g:Lich;

    nop

    nop

    nop

    nop

    if-ne p1, p3, :cond_4

    nop

    nop

    nop

    iput-object v1, p0, Licb;->g:Lich;

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p4}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->close()V

    iget-object p1, p0, Licb;->d:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    nop

    if-ne p1, p4, :cond_0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Licb;->d:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Licb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop
.end method

.method public final d(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Licb;->d5484163cd8d335e6b17663474ff5f2bm(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final dz(Llsc;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

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
    goto/32 :goto_8

    nop

    nop

    :goto_a
    iget-wide v0, p1, Llsc;->c:J

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

    nop

    :goto_b
    invoke-direct {p0, v0, v1}, Licb;->d5484163cd8d335e6b17663474ff5f2bm(J)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized e(Llsr;Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Licb;->j:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    nop
.end method

.method public final declared-synchronized f(Llsr;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

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

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Licb;->j:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Licb;->j:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
