.class public final Lebs;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method public final get()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lebs;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Lebs;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lklj;

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

    new-instance v14, Lcom/google/googlex/gcam/StaticMetadataVector;

    invoke-direct {v14}, Lcom/google/googlex/gcam/StaticMetadataVector;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [Lklv;

    sget-object v10, Lklv;->b:Lklv;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Lklv;->a:Lklv;

    const/4 v12, 0x1

    aput-object v10, v9, v12

    move v10, v11

    :goto_0
    if-ge v10, v8, :cond_a

    aget-object v13, v9, v10

    invoke-interface {v2, v13}, Lklj;->h(Lklv;)Ljava/util/List;

    move-result-object v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lkll;

    if-eqz v11, :cond_3

    iget-object v8, v11, Lkll;->a:Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-interface {v2, v11}, Lklj;->a(Lkll;)Lkli;

    move-result-object v8

    check-cast v8, Lklh;

    invoke-static {v8}, Lebq;->c(Lkli;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v8}, Lnsc;->t(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v11

    invoke-static {v1, v11}, Lebq;->d(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V

    invoke-virtual {v14, v11}, Lcom/google/googlex/gcam/StaticMetadataVector;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    :cond_0
    iget-object v8, v8, Lklh;->b:Lmwn;

    invoke-virtual {v8}, Lmwn;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_9

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkll;

    invoke-interface {v2, v13}, Lklj;->a(Lkll;)Lkli;

    move-result-object v13

    invoke-static {v13}, Lebq;->c(Lkli;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-static {v13}, Lnsc;->t(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v13

    invoke-static {v1, v13}, Lebq;->d(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V

    invoke-virtual {v14, v13}, Lcom/google/googlex/gcam/StaticMetadataVector;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    invoke-virtual {v13}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lnrg;

    move-result-object v12

    sget-object v0, Lnrg;->e:Lnrg;

    if-eq v12, v0, :cond_8

    sget-object v0, Lnrg;->h:Lnrg;

    if-eq v12, v0, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v7}, Lkog;->h()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Lkog;->i()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Lkog;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Lkog;->j()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v7, Lkog;->n:Z

    if-nez v0, :cond_6

    iget-boolean v0, v7, Lkog;->o:Z

    if-nez v0, :cond_6

    invoke-virtual {v7}, Lkog;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    move-object v12, v1

    move-object/from16 v18, v2

    invoke-static {v13}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    invoke-static {v1, v2, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_StaticMetadata__SWIG_1(JLcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    const/4 v13, 0x1

    invoke-direct {v0, v1, v2, v13}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    invoke-static {v0}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    const/4 v13, 0x2

    invoke-static {v13, v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ApplySensorBinning__SWIG_1(IJLcom/google/googlex/gcam/StaticMetadata;)Z

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

    sget-object v13, Ldho;->ag:Ldhj;

    invoke-interface {v6, v13}, Ldhi;->l(Ldhj;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v17, Lnrg;->i:Lnrg;

    :cond_7
    move-object/from16 v13, v17

    move/from16 v17, v8

    invoke-virtual {v0}, Lcom/google/googlex/gcam/StaticMetadata;->c()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/StaticMetadata;->f(I)V

    invoke-virtual {v0, v13}, Lcom/google/googlex/gcam/StaticMetadata;->g(Lnrg;)V

    invoke-virtual {v14, v0}, Lcom/google/googlex/gcam/StaticMetadataVector;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto :goto_5

    :cond_8
    :goto_4
    move-object v12, v1

    move-object/from16 v18, v2

    move/from16 v17, v8

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v8, v17

    move-object/from16 v2, v18

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_9
    move-object v12, v1

    move-object/from16 v18, v2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, v3, Lbkc;->a:Ljava/lang/Object;

    new-instance v13, Lcom/google/googlex/gcam/FloatArray2;

    invoke-direct {v13}, Lcom/google/googlex/gcam/FloatArray2;-><init>()V

    sget-object v1, Lnqr;->b:Lnqr;

    invoke-static {v14, v1}, Lebq;->a(Lcom/google/googlex/gcam/StaticMetadataVector;Lnqr;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v1}, Lcom/google/googlex/gcam/FloatArray2;->b(IF)V

    sget-object v1, Lnqr;->c:Lnqr;

    invoke-static {v14, v1}, Lebq;->a(Lcom/google/googlex/gcam/StaticMetadataVector;Lnqr;)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2, v1}, Lcom/google/googlex/gcam/FloatArray2;->b(IF)V

    check-cast v0, Lcom/google/googlex/gcam/InitParams;

    iget-wide v8, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    iget-wide v11, v13, Lcom/google/googlex/gcam/FloatArray2;->a:J

    move-object v10, v0

    invoke-static/range {v8 .. v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_reference_focal_length_35mm_set(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/FloatArray2;)V

    iget-wide v1, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    sget-object v3, Ldhq;->au:Ldhj;

    invoke-interface {v6, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_portrait_brightening_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InitParams;->a()Lnqk;

    move-result-object v1

    sget-object v2, Lnqk;->c:Lnqk;

    if-ne v1, v2, :cond_b

    invoke-virtual {v5}, Ldja;->e()V

    :cond_b
    sget-object v1, Ldhq;->av:Ldhj;

    invoke-interface {v6, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-wide v1, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :cond_c
    invoke-interface {v6}, Ldhi;->e()V

    iget-wide v9, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    iget-wide v12, v14, Lcom/google/googlex/gcam/StaticMetadataVector;->a:J

    move-object v11, v0

    invoke-static/range {v9 .. v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_Create(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/StaticMetadataVector;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    new-instance v2, Lcom/google/googlex/gcam/Gcam;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/Gcam;-><init>(J)V

    move-object v0, v2

    :goto_6
    iget-boolean v1, v7, Lkog;->i:Z

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    :cond_e
    invoke-interface {v4}, Lkbc;->f()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
