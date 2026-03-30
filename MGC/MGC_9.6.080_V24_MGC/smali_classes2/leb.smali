.class public Lleb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llid;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Likv;

.field private final c:Lpnu;

.field private final d:Lpdf;

.field private final e:Lldg;

.field private final f:Lkxj;

.field private final g:Llgc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lleb;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "leb"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Likv;Lpnu;Lkxj;Lpdf;Lldg;Llgc;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lleb;->b:Likv;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lleb;->e:Lldg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lleb;->d:Lpdf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

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

    nop

    :goto_5
    iput-object p3, p0, Lleb;->f:Lkxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lleb;->c:Lpnu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lleb;->g:Llgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private static c(Ljava/util/List;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lpge;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_2
    goto :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

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
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    check-cast v0, Lpge;

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

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;Llko;ILpro;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lrss;Lrss;I)V
    .locals 23

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    if-eq v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    move-object v13, v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4}, Loel;->d()Lphh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lleb;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    new-instance v4, Loel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v0, v12

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

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

    :goto_e
    :try_start_0
    invoke-virtual {v0}, Linb;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing the HDR+ payload, aborting shot "

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    sget-object v4, Lleb;->a:Lsdb;

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    const/16 v5, 0xd80

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v5, "%s"

    nop

    nop

    invoke-interface {v4, v5, v3}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lleb;->b:Likv;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Likv;->m(Linb;)V

    new-instance v0, Lhuf;

    nop

    nop

    invoke-static {v2}, Ljmo;->I(I)Lhui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v3, v1}, Lhuf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    sget-object v0, Lleb;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0xd81

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "Missing burst spec."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    new-instance v0, Lhtw;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->McBVFEmNhVT:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lhtw;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_3
    sget-object v0, Lleb;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0xd82

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Failed to initiate HDR+ shot capture."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    new-instance v0, Lhtw;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->lCZY:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lhtw;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :goto_f
    iget-object v1, v1, Lleb;->d:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    throw v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    invoke-static/range {p1 .. p1}, Lleb;->c(Ljava/util/List;)V

    goto/32 :goto_d

    nop

    nop

    :goto_11
    move-object v2, v14

    nop

    nop

    nop

    nop

    :goto_12
    :try_start_1
    sget-object v3, Lleb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    invoke-interface {v3, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const/16 v3, 0xd7e

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v3, "Unable to start PSL shot "

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lleb;->d:Lpdf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    iget-object v3, v1, Lleb;->e:Lldg;

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v15, v4}, Lldg;->a(Lpin;Llko;Lljk;)Lldf;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-virtual/range {p6 .. p6}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v14

    nop

    nop

    nop

    invoke-virtual {v14}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    long-to-int v12, v3

    nop

    nop

    nop

    iget-object v3, v1, Lleb;->b:Likv;

    nop

    nop

    invoke-interface {v3, v0, v2}, Likv;->r(Linb;Lcom/google/googlex/gcam/BurstSpec;)V

    move-object/from16 v17, p4

    nop

    nop

    nop

    nop

    nop

    move/from16 v11, v18

    nop

    nop

    move/from16 v16, v11

    nop

    nop

    nop

    nop

    move/from16 v19, v16

    nop

    nop

    :goto_14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    if-ge v11, v3, :cond_8

    nop

    move-object/from16 v10, p1

    nop

    nop

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v6, v2

    nop

    check-cast v6, Lpge;

    nop

    sget-object v2, Lsxd;->c:Lsxd;

    nop

    nop

    nop

    int-to-long v3, v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v7

    nop

    cmp-long v3, v3, v7

    nop

    if-gez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v11}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v2

    nop

    nop

    nop

    :cond_4
    move-object v7, v2

    nop

    nop

    nop

    new-instance v20, Lktn;

    nop

    invoke-direct/range {v20 .. v20}, Lktn;-><init>()V

    const/4 v8, 0x0

    nop

    nop

    move-object v2, v13

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    nop

    move/from16 v4, v16

    nop

    move v5, v12

    nop

    nop

    nop

    move-object/from16 v9, p8

    nop

    move-object/from16 v10, p4

    nop

    move/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v11, v17

    nop

    move/from16 v22, v12

    nop

    nop

    nop

    move-object/from16 v12, v20

    nop

    nop

    invoke-virtual/range {v2 .. v12}, Lldf;->b(Linb;IILpge;Lsxd;ZLrss;Lpro;Lpro;Lktp;)Lrsu;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    if-nez v19, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    goto :goto_15

    nop

    nop

    :cond_5
    move/from16 v19, v18

    nop

    nop

    goto :goto_16

    nop

    :cond_6
    :goto_15
    move/from16 v19, v3

    nop

    nop

    :goto_16
    iget-object v2, v2, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Lpro;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    add-int/lit8 v16, v16, 0x1

    nop

    move-object/from16 v17, v2

    nop

    nop

    :cond_7
    add-int/lit8 v11, v21, 0x1

    nop

    nop

    nop

    move-object/from16 v2, p6

    nop

    nop

    nop

    nop

    nop

    move/from16 v12, v22

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    :cond_8
    move/from16 v22, v12

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v15, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v2}, Llxa;->ag()Lmjn;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v3, v13

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    move/from16 v5, v16

    nop

    nop

    nop

    nop

    move/from16 v6, v22

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v7, v17

    nop

    move-object/from16 v10, p6

    nop

    nop

    move/from16 v11, v19

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v11}, Lldf;->c(Linb;IILpro;Lmjn;ZLcom/google/googlex/gcam/BurstSpec;Z)I

    move-result v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_13

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v8, p4

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

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1a
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_1b
    check-cast v3, Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    const-string v1, "Zero frames to process."

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_20
    throw v0

    nop

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    move-object/from16 v14, p6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_24
    invoke-direct {v0, v1}, Lhtw;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v12, p7

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v18, v13

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Loel;->e()Lphh;

    move-result-object v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Lphh;->d()Lpnx;

    move-result-object v0

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

    :goto_2c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static/range {p1 .. p1}, Lleb;->c(Ljava/util/List;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v2, p1

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

    :goto_2f
    move/from16 v18, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_30
    const/4 v12, 0x0

    nop

    :try_start_3
    iget-object v3, v1, Lleb;->b:Likv;

    nop

    nop

    nop

    nop

    move-object/from16 v0, p5

    nop

    iget-object v7, v0, Lijd;->j:Lkvu;

    nop

    nop

    sget-object v0, Lioy;->a:Lioy;

    nop
    :try_end_3
    .catch Lpfi; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v1, 0xd83

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v4, v0, v3}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move/from16 v14, v16

    nop

    :try_start_4
    invoke-interface/range {v3 .. v14}, Likv;->G(Lpnx;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;IZILrss;Lioy;Z)Linb;

    move-result-object v12

    nop

    nop

    nop
    :try_end_4
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v1, Lleb;->d:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    move-object/from16 v15, p2

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

    :goto_37
    move/from16 v11, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    goto/32 :goto_7

    nop

    nop

    :goto_39
    iget-object v0, v1, Lleb;->g:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3a
    goto :goto_3f

    nop

    :goto_3b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_9

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3d
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iget-object v0, v1, Lleb;->c:Lpnu;

    nop

    nop

    iget-object v3, v1, Lleb;->f:Lkxj;

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Lijg;->a(Lpnu;Lkxj;)Lcom/google/googlex/gcam/PostviewParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lleb;->d:Lpdf;

    nop

    const-string v3, "pckHdrZsl#startShot"

    nop

    nop

    invoke-interface {v0, v3}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Lphh;->d()Lpnx;

    move-result-object v0

    nop

    nop

    :goto_3f
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v4}, Loel;->e()Lphh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_41
    move-object v2, v14

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_42
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2a

    nop

    nop

    :goto_44
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_a
    goto/32 :goto_43

    nop

    :goto_46
    goto/16 :goto_12

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    const/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v5, p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_49
    new-instance v0, Lhtw;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move/from16 v9, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpnx;Ljava/util/List;Lkub;Llko;ILpro;Lijd;Lrss;)V
    .locals 11

    goto/32 :goto_13

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v9, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    move/from16 v4, p5

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v8, Lrsa;->a:Lrsa;

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

    :goto_8
    move-object v2, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v5, p6

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

    :goto_c
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    move-object v3, p4

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

    :goto_f
    const/4 v7, 0x0

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

    nop

    :goto_10
    move-object/from16 v6, p7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    const v1, 0x1a

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

    :goto_12
    invoke-virtual/range {v1 .. v10}, Lleb;->a(Ljava/util/List;Llko;ILpro;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lrss;Lrss;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x6

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

    nop

    nop

    :goto_14
    const/4 v10, 0x1

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

    nop

    nop

    :goto_15
    move-object v1, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
