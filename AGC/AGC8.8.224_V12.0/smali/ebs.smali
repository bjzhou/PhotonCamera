.class public final Lebs;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebs;->a:Loiw;

    iput-object p2, p0, Lebs;->b:Loiw;

    iput-object p3, p0, Lebs;->c:Loiw;

    iput-object p4, p0, Lebs;->d:Loiw;

    iput-object p5, p0, Lebs;->e:Loiw;

    iput-object p6, p0, Lebs;->f:Loiw;

    iput-object p7, p0, Lebs;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lebs;->a:Loiw;

    check-cast v1, Limf;

    invoke-virtual {v1}, Limf;->a()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v0, Lebs;->b:Loiw;

    check-cast v2, Ljzo;

    invoke-virtual {v2}, Ljzo;->a()Lklj;

    move-result-object v2

    iget-object v3, v0, Lebs;->c:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lebs;->d:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkbc;

    iget-object v5, v0, Lebs;->e:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldja;

    iget-object v6, v0, Lebs;->f:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldhi;

    iget-object v7, v0, Lebs;->g:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkog;

    check-cast v3, Lbkc;

    const-string v8, "Gcam#provide"

    invoke-interface {v4, v8}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlex/gcam/hdrplus/HalideRuntime;->checkGcamHalideRuntime()Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lebq;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v9, "HalideRuntime.checkGcamHalideRuntime -> Failed"

    const/16 v10, 0x4f8

    invoke-static {v8, v9, v10}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    new-instance v8, Lcom/google/googlex/gcam/StaticMetadataVector;

    invoke-direct {v8}, Lcom/google/googlex/gcam/StaticMetadataVector;-><init>()V

    const/4 v9, 0x2

    new-array v10, v9, [Lklv;

    sget-object v11, Lklv;->b:Lklv;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Lklv;->a:Lklv;

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    aget-object v14, v10, v11

    invoke-interface {v2, v14}, Lklj;->h(Lklv;)Ljava/util/List;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lkll;

    if-eqz v12, :cond_4

    iget-object v9, v12, Lkll;->a:Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-interface {v2, v12}, Lklj;->a(Lkll;)Lkli;

    move-result-object v9

    invoke-static {v9}, Lebq;->c(Lkli;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v9}, Lnsc;->t(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v12

    invoke-static {v1, v12}, Lebq;->d(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V

    invoke-virtual {v8, v12}, Lcom/google/googlex/gcam/StaticMetadataVector;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    :cond_1
    check-cast v9, Lklh;

    iget-object v9, v9, Lklh;->b:Lmwn;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkll;

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v9, 0x2

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_b

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkll;

    invoke-interface {v2, v14}, Lklj;->a(Lkll;)Lkli;

    move-result-object v14

    invoke-static {v14}, Lebq;->c(Lkli;)Z

    move-result v16

    if-nez v16, :cond_6

    move-object v13, v1

    move-object/from16 v18, v2

    move/from16 v17, v9

    goto/16 :goto_5

    :cond_6
    invoke-static {v14}, Lnsc;->t(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v14

    invoke-static {v1, v14}, Lebq;->d(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V

    invoke-virtual {v8, v14}, Lcom/google/googlex/gcam/StaticMetadataVector;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    invoke-virtual {v14}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lnrg;

    move-result-object v13

    sget-object v0, Lnrg;->e:Lnrg;

    if-eq v13, v0, :cond_a

    sget-object v0, Lnrg;->h:Lnrg;

    if-ne v13, v0, :cond_a

    invoke-virtual {v7}, Lkog;->h()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7}, Lkog;->i()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7}, Lkog;->b()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7}, Lkog;->j()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, v7, Lkog;->n:Z

    if-nez v0, :cond_8

    iget-boolean v0, v7, Lkog;->o:Z

    if-nez v0, :cond_8

    invoke-virtual {v7}, Lkog;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v13, v1

    move-object/from16 v18, v2

    move/from16 v17, v9

    goto :goto_5

    :cond_8
    :goto_4
    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    move-object v13, v1

    move-object/from16 v18, v2

    invoke-static {v14}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    invoke-static {v1, v2, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_StaticMetadata__SWIG_1(JLcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    const/4 v14, 0x1

    invoke-direct {v0, v1, v2, v14}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    invoke-static {v0}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    const/4 v14, 0x2

    invoke-static {v14, v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ApplySensorBinning__SWIG_1(IJLcom/google/googlex/gcam/StaticMetadata;)Z

    sget-object v1, Ldib;->d:Ldhk;

    invoke-interface {v6, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Ldib;->c:Ldhk;

    invoke-interface {v6, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v17, Lnrg;->f:Lnrg;

    sget-object v14, Ldho;->ag:Ldhj;

    invoke-interface {v6, v14}, Ldhi;->l(Ldhj;)Z

    move-result v14

    if-eqz v14, :cond_9

    sget-object v17, Lnrg;->i:Lnrg;

    :cond_9
    move-object/from16 v14, v17

    move/from16 v17, v9

    invoke-virtual {v0}, Lcom/google/googlex/gcam/StaticMetadata;->c()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/StaticMetadata;->f(I)V

    invoke-virtual {v0, v14}, Lcom/google/googlex/gcam/StaticMetadata;->g(Lnrg;)V

    invoke-virtual {v8, v0}, Lcom/google/googlex/gcam/StaticMetadataVector;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto :goto_5

    :cond_a
    move-object v13, v1

    move-object/from16 v18, v2

    move/from16 v17, v9

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v9, v17

    move-object/from16 v2, v18

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_b
    move-object v13, v1

    move-object/from16 v18, v2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v0, v3, Lbkc;->a:Ljava/lang/Object;

    new-instance v14, Lcom/google/googlex/gcam/FloatArray2;

    invoke-direct {v14}, Lcom/google/googlex/gcam/FloatArray2;-><init>()V

    sget-object v1, Lnqr;->b:Lnqr;

    invoke-static {v8, v1}, Lebq;->a(Lcom/google/googlex/gcam/StaticMetadataVector;Lnqr;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1}, Lcom/google/googlex/gcam/FloatArray2;->b(IF)V

    sget-object v1, Lnqr;->c:Lnqr;

    invoke-static {v8, v1}, Lebq;->a(Lcom/google/googlex/gcam/StaticMetadataVector;Lnqr;)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v14, v2, v1}, Lcom/google/googlex/gcam/FloatArray2;->b(IF)V

    check-cast v0, Lcom/google/googlex/gcam/InitParams;

    iget-wide v9, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    iget-wide v12, v14, Lcom/google/googlex/gcam/FloatArray2;->a:J

    move-object v11, v0

    invoke-static/range {v9 .. v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_reference_focal_length_35mm_set(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/FloatArray2;)V

    sget-object v1, Ldhq;->au:Ldhj;

    invoke-interface {v6, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    iget-wide v2, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_portrait_brightening_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InitParams;->a()Lnqk;

    move-result-object v1

    sget-object v2, Lnqk;->c:Lnqk;

    if-ne v1, v2, :cond_d

    invoke-virtual {v5}, Ldja;->e()V

    :cond_d
    sget-object v1, Ldhq;->av:Ldhj;

    invoke-interface {v6, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v1, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :cond_e
    invoke-interface {v6}, Ldhi;->e()V

    iget-wide v11, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    iget-wide v14, v8, Lcom/google/googlex/gcam/StaticMetadataVector;->a:J

    move-object v13, v0

    move-object/from16 v16, v8

    invoke-static/range {v11 .. v16}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_Create(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/StaticMetadataVector;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_f

    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    new-instance v2, Lcom/google/googlex/gcam/Gcam;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/Gcam;-><init>(J)V

    move-object v0, v2

    :goto_6
    invoke-static {}, Lcom/Globals;->GoogleDevices()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, v7, Lkog;->i:Z

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    :cond_10
    invoke-interface {v4}, Lkbc;->f()V

    return-object v0
.end method
