.class public Llwp;
.super Llwf;
.source "PG"


# static fields
.field private static final g:Lsdb;


# instance fields
.field public final c:Liob;

.field public d:Lrss;

.field public e:Ljty;

.field public final f:Ljmo;

.field private final h:Loyd;

.field private final i:Lrss;

.field private final j:Lkvy;

.field private final k:Lpdf;

.field private final l:Lltr;

.field private final m:Lkmq;

.field private final n:Loyd;

.field private final o:Loyd;

.field private final p:Loyn;

.field private q:Lrss;

.field private r:Z

.field private final s:Lidi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Llwp;->g:Lsdb;

    nop

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "lwp"

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Llvt;Liob;Loyd;Lkvy;Loyd;Loyd;Lpdf;Llqc;Loyn;Ljmo;Lidi;Ljava/lang/String;Lgii;Llxg;Lrss;Lkmq;Lrss;Lrss;Llxo;Lltr;J)V
    .locals 12

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Llwp;->j:Lkvy;

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

    :goto_2
    iput-object v1, v0, Llwp;->s:Lidi;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_4
    move-object/from16 v1, p18

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual/range {v2 .. v11}, Llvt;->a(Llxo;Ljava/lang/String;Lgii;Llxg;Llqc;Lrss;ZJ)Llvs;

    move-result-object v2

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

    :goto_6
    move-object/from16 v7, p8

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v2, v0, Llwp;->e:Ljty;

    nop

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

    :goto_8
    new-instance v2, Llmx;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a
    move-wide/from16 v10, p21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Llvs;->x(Ljava/lang/Runnable;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    move-object/from16 v1, p5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

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

    :goto_f
    move-object/from16 v1, p4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0x12

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

    :goto_11
    move-object/from16 v4, p12

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v2}, Llwf;-><init>(Llvs;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_13
    iget-object v1, v0, Llwf;->b:Llvs;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    move-object/from16 v1, p6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v1, p20

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v1, v0, Llwp;->m:Lkmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v1, p3

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

    nop

    :goto_18
    invoke-direct {v2, p0, v3}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    move-object v2, p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, v0, Llwp;->o:Loyd;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v1, p7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v0, Llwp;->n:Loyd;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v2, v0, Llwp;->c:Liob;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v9, v1, Lkmq;->l:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v1, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    move-object v0, p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Llwp;->i:Lrss;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v1, p16

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Llwp;->f:Ljmo;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    iput-object v2, v0, Llwp;->q:Lrss;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    move-object/from16 v3, p19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v1, p11

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

    :goto_29
    move-object v2, p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v0, Llwp;->l:Lltr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    move-object/from16 v2, p15

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

    :goto_2c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Llwp;->p:Loyn;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

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

    :goto_2f
    sget-object v2, Ljty;->a:Ljty;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_30
    iput-object v1, v0, Llwp;->h:Loyd;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v1, v0, Llwp;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_32
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v2, v0, Llwp;->d:Lrss;

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

    :goto_35
    move-object/from16 v5, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_36
    move-object/from16 v8, p17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v1, p10

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v6, p14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_39
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3a
    iput-boolean v2, v0, Llwp;->r:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v1, p9

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final G()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Llwp;->r:Z

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

    nop

    :goto_2
    invoke-virtual {p0}, Llwb;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Llwf;->g()Llwb;

    move-result-object p0

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    const-string v0, "interruptSession"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final L([B)[B
    .locals 4

    goto/32 :goto_30

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "Couldn\'t write depth data, using original stream"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Llwp;->i:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Liof;->i()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const-string v1, "Writing depth data into the jpeg image"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Llwp;->k:Lpdf;

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

    :goto_7
    const-string v1, "[%s] %s"

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

    :goto_8
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    :goto_a
    iget-object p0, p0, Llwp;->k:Lpdf;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Llwf;->j()Llxm;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0xfe4

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

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_13
    :try_start_0
    sget-object v3, Llwp;->g:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    invoke-interface {v3, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const/16 v3, 0x1001

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    const-string v3, "Error writing depth data into jpeg."

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_14
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    :goto_16
    return-object p1

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1, p0, v2}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Llwf;->j()Llxm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    move-object v2, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_13

    nop

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

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Lscz;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Liof;->e(Llxm;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v1}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Liof;->i()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Llwp;->k:Lpdf;

    nop

    const-string v2, "ddepth"

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    move-object v1, v0

    nop

    check-cast v1, Liof;

    nop

    nop

    iget-object v1, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    check-cast v2, Liof;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->d([BLcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lltn;)[B

    move-result-object v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Llwf;->ag()Lmjn;

    move-result-object v2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v3, v2, Lmjn;->e:Z

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Llwf;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    goto :goto_29

    nop

    nop

    :catch_0
    move-exception v1

    nop

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

    :goto_28
    return-object v1

    nop

    :goto_29
    goto/32 :goto_31

    nop

    nop

    :goto_2a
    check-cast v0, Lrsx;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_2e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x13

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_31
    check-cast v0, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v0, Liof;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Liof;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final Q()V
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    check-cast v2, Llpe;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v3}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4
    goto/16 :goto_67

    nop

    nop

    :goto_5
    goto/32 :goto_66

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Llwp;->o:Loyd;

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljic;-><init>(I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_e
    iget-boolean v2, v2, Lkmq;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, v3, Ljrk;->b:Lsnu;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_10
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Llwf;->g()Llwb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Llwp;->m:Lkmq;

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

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lkae;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    :goto_18
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v4, Llyr;->aJ:Llzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v3, "CaptureSessionNotifier#onCaptureStarted"

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljut;->e()Llko;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljut;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v4}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0, v0, v1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    check-cast v0, Lsnu;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v2, v2, Lkmq;->l:Z

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v5, v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_28
    invoke-virtual {v3, v2}, Ljrk;->d(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_29
    iput-object v2, v3, Ljrk;->c:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_2a
    iget-object v0, p0, Llwp;->k:Lpdf;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v3, Llko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-super {p0}, Llwf;->Q()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v6, Lsnu;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Lkae;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_33
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Llwp;->q:Lrss;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3}, Ljrk;->a()Ljrl;

    move-result-object v2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Llwp;->p:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3, v2}, Ljrk;->f(Ljrz;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_2
    goto/32 :goto_6c

    nop

    :goto_3b
    add-int/lit8 v4, v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_3c
    iget v0, v6, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3d
    invoke-static {}, Ljrl;->a()Ljrk;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3e
    const-string v1, "enqueueProcessingTask"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3f
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Llwf;->k()Llxo;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_41
    iput v3, v0, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_42
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_44
    iget v3, v0, Lsnu;->b:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v2, v0

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

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

    :goto_4a
    iget-object v2, p0, Llwp;->h:Loyd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Llwp;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto :goto_47

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    or-int/lit16 v3, v3, 0x200

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Llwp;->q:Lrss;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_51
    check-cast v2, Ljrz;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_52
    iput v0, v6, Lsnu;->b:I

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

    :goto_53
    check-cast v0, Lsnu;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_54
    iget-object v0, p0, Llwp;->k:Lpdf;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput v0, v6, Lsnu;->i:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v2}, Llwb;->c(Ljrl;)V

    goto/32 :goto_4b

    nop

    nop

    :goto_57
    iget-object v0, v0, Ljut;->e:Llyv;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

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

    :goto_59
    goto/16 :goto_17

    nop

    :goto_5a
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_5b
    or-int/lit8 v0, v0, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5c
    add-int/lit8 v0, v0, -0x1

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

    :goto_5d
    move v0, v4

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0}, Llwf;->I()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput v4, v0, Lsnu;->m:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eqz v6, :cond_5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v3, v2}, Ljrk;->c(Z)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v2, Lsnu;->a:Lsnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_66
    move v4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_8

    nop

    nop

    :goto_68
    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_69
    if-ne v0, v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v0, p0, Llwp;->k:Lpdf;

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

    nop

    :goto_6b
    new-instance v0, Ljic;

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

    :goto_6c
    goto/32 :goto_1c

    nop

    nop

    :goto_6d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6f
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v0, v3}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_71
    const v1, 0x20

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3, v2}, Ljrk;->e(Llpe;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_74
    iput-object v0, p0, Llwp;->q:Lrss;

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const-string v1, "CaptureSessionBase#onCaptureStarted"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_78
    iget-object v2, p0, Llwp;->m:Lkmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v0}, Lkav;->E(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_7a
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7b
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v3, v2}, Ljrk;->b(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7d
    iput-object v4, v3, Ljrk;->a:Llxo;

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

    :goto_7e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_80
    iget-object v2, p0, Llwp;->n:Loyd;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v0, p0, Llwp;->k:Lpdf;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_82
    const-string v3, "MicrovideoController#collectCaptureStartStats"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_83
    goto/32 :goto_6d

    nop

    nop

    :goto_84
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop
.end method

.method public final R([BLmla;Llxc;)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p2, Lmla;->e:Lkvx;

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p2, Lmla;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Llwp;->s:Lidi;

    nop

    nop

    iget-object v1, p3, Llxc;->b:Lpsf;

    nop

    nop

    nop

    iget-object v2, p2, Lmla;->f:Lj$/util/Optional;

    nop

    nop

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lidb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lidi;->c(Lpsf;Lidb;)V

    :cond_0
    invoke-virtual {p0}, Llwf;->e()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljtx;->a()Ljtp;

    move-result-object v2

    nop

    iget-object v3, p2, Lmla;->f:Lj$/util/Optional;

    nop

    nop

    invoke-virtual {v2, v3}, Ljtp;->c(Lj$/util/Optional;)V

    invoke-virtual {v2}, Ljtp;->a()Ljtx;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {p1, v0, v1, v2}, Ljmo;->o([BJLjtx;)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Llwf;->v(Lmla;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lrss;->f()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p3, Llxc;->b:Lpsf;

    nop

    nop

    invoke-static {p1, p0, p2}, Lpuq;->aX(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lpsf;)J

    invoke-virtual {p3}, Llxc;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x2

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

    :goto_2
    const/16 v0, 0x1000

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p3, Llxc;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array {v1, v2}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7
    sget-object p1, Llwp;->g:Lsdb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "Ignoring saveSecondaryMedia. CaptureSession has been deleted or canceled."

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2, v0, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lfdo;->M()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lkvx;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_f
    const v0, 0x1f

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

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Lfdo;->Q(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    iget-object v0, p0, Llwp;->j:Lkvy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-boolean v0, p2, Lmla;->d:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    iput-object v0, p2, Lmla;->c:Lrss;

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

    :goto_1e
    invoke-virtual {p3}, Llxc;->a()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lkmq;->g:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Llwf;->J(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

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

    nop

    :goto_24
    const-string v0, "saveSecondaryMedia"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Llwp;->m:Lkmq;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_28
    const-string p2, "Error writing secondary image to disk"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Llwf;->f()Lgii;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lgii;->b()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Lfdo;->P([I)V

    goto/32 :goto_30

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Loyv;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final af()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Llwp;->r:Z

    nop

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

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final s([BLmla;)Lsui;
    .locals 6

    const-string v1, "codex_save_chain"

    const-string v2, "lwp.s"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_codex_bypass

    array-length v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lwp.s before helper len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, p1}, Lcom/hinnka/mycamera/previewhook/api/MgcCapturedJpegHook;->processJpegWithSource(Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_codex_bypass

    array-length v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lwp.s after helper len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    :cond_codex_bypass
    const-string v3, "lwp.s bypass helper because jpegBytes is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Llwf;->h()Llxc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Llwf;->t([BLmla;Llxc;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final t([BLmla;Llxc;)Lsui;
    .locals 9

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3a

    nop

    nop

    :goto_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lfdo;->M()Z

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    iput-object v0, p2, Lmla;->e:Lkvx;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4
    move-object v4, p2

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

    :goto_5
    filled-new-array {v1, v2}, [I

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    new-instance v1, Lhos;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v8, 0x0

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

    :goto_9
    new-instance v1, Llwo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Llwf;->x()Lsuu;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p2, Lmla;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Llwp;->l:Lltr;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Loyv;->cM()Ljava/lang/Object;

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

    nop

    nop

    :goto_e
    const/16 v2, 0xe

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const-string v0, "saveAndFinish"

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

    :goto_11
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, p0, v2}, Lhos;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    move-object v2, v1

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

    :goto_15
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

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

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    iput-object v0, p2, Lmla;->c:Lrss;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Llwp;->j:Lkvy;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lfdo;->P([I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Llwp;->m:Lkmq;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Llwf;->f()Lgii;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1f
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lkvx;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    invoke-direct/range {v2 .. v8}, Llwo;-><init>(Llwp;Lmla;Llxc;Lrss;[BI)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Llwf;->J(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    move-object v7, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    move-object v3, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v2}, Lfdo;->Q(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x3

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

    :goto_2b
    iget-object v0, v0, Lkmq;->g:Loyn;

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

    :goto_2c
    move-object v5, p3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, p2, v0}, Llvs;->p(Lmla;Lltr;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    iget-boolean v0, p3, Llxc;->c:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Llwf;->z()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Llwf;->b:Llvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Lgii;->b()Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method
