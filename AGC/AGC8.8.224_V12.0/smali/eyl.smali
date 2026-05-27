.class public final synthetic Leyl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Leys;

.field public final synthetic b:Lhza;

.field public final synthetic c:Lhec;


# direct methods
.method public synthetic constructor <init>(Leys;Lhza;Lhec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leyl;->a:Leys;

    iput-object p2, p0, Leyl;->b:Lhza;

    iput-object p3, p0, Leyl;->c:Lhec;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Leyl;->a:Leys;

    iget-object v0, v1, Leyl;->b:Lhza;

    iget-object v3, v1, Leyl;->c:Lhec;

    invoke-static {}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->builder()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lkuw;

    iput-object v6, v7, Lkuw;->q:Ljava/lang/Integer;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lkuw;->j:Ljava/lang/Integer;

    iget-object v8, v2, Leys;->c:Ldhi;

    sget-object v9, Ldht;->g:Ldhj;

    invoke-interface {v8, v9}, Ldhi;->l(Ldhj;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_0

    iget-object v8, v2, Leys;->c:Ldhi;

    invoke-interface {v8}, Ldhi;->e()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :goto_0
    xor-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lkuw;->g:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lkuw;->m:Ljava/lang/Boolean;

    iget-object v11, v2, Leys;->c:Ldhi;

    sget-object v12, Ldht;->i:Ldhj;

    invoke-interface {v11, v12}, Ldhi;->l(Ldhj;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, v0, Lhza;->a:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v7, Lkuw;->o:Ljava/lang/Boolean;

    iget-object v0, v0, Lhza;->b:Lmvv;

    iput-object v0, v7, Lkuw;->f:Ljava/util/List;

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v11, Ldht;->j:Ldhj;

    invoke-interface {v0, v11}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const-string v11, "com.google.ar.core"

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Leys;->c()Lkvy;

    move-result-object v0

    sget-object v12, Lkvy;->e:Lkvy;

    if-ne v0, v12, :cond_2

    iget-object v0, v2, Leys;->C:Lbkb;

    invoke-virtual {v0}, Lbkb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lbkb;->U(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_2

    :cond_2
    sget-object v12, Lkvy;->d:Lkvy;

    if-ne v0, v12, :cond_4

    iget-object v0, v2, Leys;->C:Lbkb;

    invoke-virtual {v0, v11}, Lbkb;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x12

    invoke-static {v0, v10, v12}, Lbkb;->U(Ljava/lang/String;II)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->B:Ljava/lang/Boolean;

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v12, Ldht;->n:Ldhj;

    invoke-interface {v0, v12}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->C:Ljava/lang/Boolean;

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v12, Ldht;->h:Ldhj;

    invoke-interface {v0, v12}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->a:Ljava/lang/Boolean;

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v12, Ldht;->A:Ldhj;

    invoke-interface {v0, v12}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Leys;->c:Ldhi;

    invoke-interface {v0}, Ldhi;->e()V

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Leys;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    xor-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->t:Ljava/lang/Boolean;

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v12, Ldht;->k:Ldhj;

    invoke-interface {v0, v12}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->k:Ljava/lang/Boolean;

    iget-boolean v0, v2, Leys;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->c:Ljava/lang/Boolean;

    iget-object v0, v2, Leys;->j:Ldga;

    invoke-interface {v0}, Ldga;->bz()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v7, Lkuw;->l:Ljava/util/Map;

    iget-boolean v0, v2, Leys;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->D:Ljava/lang/Boolean;

    iput-object v8, v7, Lkuw;->n:Ljava/lang/Boolean;

    iput-object v8, v7, Lkuw;->p:Ljava/lang/Boolean;

    invoke-virtual {v2}, Leys;->c()Lkvy;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;->a(Lkvy;)V

    invoke-virtual {v2}, Leys;->c()Lkvy;

    move-result-object v0

    sget-object v8, Lkvy;->d:Lkvy;

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lkuw;->r:Ljava/lang/Boolean;

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v8, Ldht;->b:Ldhk;

    invoke-interface {v0, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v8, Ldht;->b:Ldhk;

    invoke-interface {v0, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v12, v0

    goto :goto_6

    :cond_8
    const-wide/16 v12, 0x0

    :goto_6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lkuw;->w:Ljava/lang/Long;

    :try_start_0
    iget-object v7, v2, Leys;->a:Landroid/content/Context;

    new-instance v0, Leyn;

    invoke-direct {v0, v4}, Leyn;-><init>(Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;)V

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    invoke-static {v4, v8}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    const-class v8, Lkuy;

    invoke-static {v0, v8}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v4}, Logl;->a(Ljava/lang/Object;)Logk;

    move-result-object v8

    invoke-static {v0}, Logl;->a(Ljava/lang/Object;)Logk;

    move-result-object v12

    new-instance v13, Lkjf;

    invoke-direct {v13, v12, v6}, Lkjf;-><init>(Loiw;I)V

    sget-object v12, Logo;->a:Logk;

    invoke-static {v10}, Llho;->L(I)Ljava/util/List;

    move-result-object v12

    invoke-static {v9}, Llho;->L(I)Ljava/util/List;

    move-result-object v14

    invoke-static {v13, v12}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v12, v14}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v12

    sget-object v13, Lkvw;->a:[Ljava/lang/String;

    new-instance v15, Lkvu;

    new-instance v14, Lloi;

    invoke-direct {v14, v8, v12}, Lloi;-><init>(Loiw;Loiw;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v15

    move-object v13, v4

    move-object v8, v15

    move-object v15, v0

    invoke-direct/range {v12 .. v18}, Lkvu;-><init>(Landroid/content/Context;Lloi;Lkuy;[B[B[B)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lkuy;->a()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;

    move-result-object v0

    check-cast v0, Lkux;

    iget-object v0, v0, Lkux;->a:Lkvy;

    sget-object v13, Lmpx;->a:Lmpx;

    sget-object v14, Lkvy;->d:Lkvy;

    if-ne v0, v14, :cond_9

    sget-object v0, Lkvw;->a:[Ljava/lang/String;

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    sget-object v14, Lkvy;->e:Lkvy;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v15, "com.google.vr.apps.ornament"

    if-ne v0, v14, :cond_a

    :try_start_1
    sget-object v0, Lkvw;->a:[Ljava/lang/String;

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    sget-object v14, Lkvy;->b:Lkvy;

    if-ne v0, v14, :cond_b

    sget-object v0, Lkvw;->a:[Ljava/lang/String;

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    const-string v11, "EngineApiLoaderContr"

    if-nez v0, :cond_d

    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-interface {v8, v13}, Lkvt;->a(Ljava/lang/String;)Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;

    move-result-object v0

    invoke-static {v0, v13}, Lkvv;->a(Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;Ljava/lang/String;)Lkvv;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    const-string v14, "EngineApi loaded from %s"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v13, v15, v9

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Lkvs; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lkvr; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v13, v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_4
    new-array v14, v5, [Ljava/lang/Object;

    aput-object v13, v14, v9

    invoke-virtual {v0}, Lkvr;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v10

    const-string v0, "Failed to load engine api from remote package: %1$s. %2$s. "

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_8

    :catch_1
    move-exception v0

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v13, v0, v9

    const-string v13, "No package found: %s."

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_8

    :cond_c
    const-string v0, "All remote package attempts fail."

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lmpx;->a:Lmpx;

    :cond_d
    :goto_9
    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v0, :cond_e

    :try_start_5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lkvt;->a(Ljava/lang/String;)Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkvv;->a(Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;Ljava/lang/String;)Lkvv;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v13
    :try_end_5
    .catch Lkvr; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_2
    move-exception v0

    :cond_e
    :goto_a
    :try_start_6
    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "EngineApi implementation not found"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ldja;

    invoke-virtual {v13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkvv;

    iget-object v4, v4, Lkvv;->a:Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkvv;

    iget-object v8, v8, Lkvv;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v7, v8}, Ldja;-><init>(Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, v2, Leys;->A:Ldja;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v4, Ldht;->o:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v4, 0x6

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v2, Leys;->A:Ldja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ldja;->t()J

    move-result-wide v11

    sget-object v13, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->VERSION_8:Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;

    invoke-virtual {v13}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->getVersionCode()I

    move-result v13

    int-to-long v13, v13

    cmp-long v15, v11, v13

    if-ltz v15, :cond_10

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0, v7, v4}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->startLinkLogging(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_10
    move-object v0, v8

    :goto_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Leys;->u:Ljava/lang/String;

    :cond_11
    iget-object v11, v2, Leys;->l:Lfbz;

    sget-object v0, Lnjg;->f:Lnjg;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v12

    iget-object v0, v2, Leys;->u:Ljava/lang/String;

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_12
    iget-object v13, v12, Lnwn;->b:Lnws;

    check-cast v13, Lnjg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v13, Lnjg;->a:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v13, Lnjg;->a:I

    iput-object v0, v13, Lnjg;->e:Ljava/lang/String;

    sget-object v0, Lnjh;->f:Lnjh;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v13

    iget-object v0, v13, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_13
    iget-object v0, v13, Lnwn;->b:Lnws;

    check-cast v0, Lnjh;

    iput v10, v0, Lnjh;->b:I

    iget v14, v0, Lnjh;->a:I

    or-int/2addr v14, v10

    iput v14, v0, Lnjh;->a:I

    iget-object v0, v2, Leys;->c:Ldhi;

    sget-object v14, Ldht;->j:Ldhj;

    invoke-interface {v0, v14}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eq v10, v0, :cond_14

    const/4 v0, 0x3

    goto :goto_c

    :cond_14
    const/4 v0, 0x2

    :goto_c
    iget-object v14, v13, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_15

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_15
    iget-object v14, v13, Lnwn;->b:Lnws;

    move-object v15, v14

    check-cast v15, Lnjh;

    add-int/lit8 v0, v0, -0x1

    iput v0, v15, Lnjh;->c:I

    iget v0, v15, Lnjh;->a:I

    or-int/2addr v0, v5

    iput v0, v15, Lnjh;->a:I

    iget-object v0, v2, Leys;->A:Ldja;

    iget-object v0, v0, Ldja;->b:Ljava/lang/Object;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_16
    iget-object v5, v13, Lnwn;->b:Lnws;

    check-cast v5, Lnjh;

    iget v14, v5, Lnjh;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v5, Lnjh;->a:I

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lnjh;->d:Ljava/lang/String;

    iget-object v0, v2, Leys;->A:Ldja;

    :try_start_7
    iget-object v5, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v0, v0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    new-array v5, v9, [Ljava/lang/Object;

    const-string v9, "LinkEngineApi"

    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "Read host package version name failure"

    invoke-static {v4, v5}, Llho;->r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_d
    iget-object v0, v13, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_18
    iget-object v0, v13, Lnwn;->b:Lnws;

    check-cast v0, Lnjh;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v0, Lnjh;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v0, Lnjh;->a:I

    iput-object v7, v0, Lnjh;->e:Ljava/lang/String;

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjh;

    iget-object v4, v12, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_19
    iget-object v4, v12, Lnwn;->b:Lnws;

    check-cast v4, Lnjg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lnjg;->b:Lnjh;

    iget v0, v4, Lnjg;->a:I

    or-int/2addr v0, v10

    iput v0, v4, Lnjg;->a:I

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjg;

    invoke-interface {v11, v0}, Lfbz;->w(Lnjg;)V

    iget-object v0, v2, Leys;->A:Ldja;

    new-instance v4, Leyo;

    invoke-direct {v4, v2}, Leyo;-><init>(Leys;)V

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->setKeyguardDismisser(Lcom/google/android/libraries/lens/lenslite/api/KeyguardDismisser;)V

    iget-object v0, v2, Leys;->A:Ldja;

    iget-object v4, v2, Leys;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Ldja;->t()J

    move-result-wide v11

    sget-object v5, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->VERSION_7:Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;

    invoke-virtual {v5}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->getVersionCode()I

    move-result v5

    int-to-long v13, v5

    cmp-long v5, v11, v13

    if-ltz v5, :cond_1a

    iget-object v5, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v5, v4}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->setActivity(Landroid/app/Activity;)V

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    const v7, 0x7f150003

    invoke-direct {v5, v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v5}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->setAlertDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    :cond_1a
    iget-object v0, v2, Leys;->A:Ldja;

    new-instance v4, Leyp;

    invoke-direct {v4, v2}, Leyp;-><init>(Leys;)V

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0, v4, v8}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->setEventListener(Lcom/google/android/libraries/lens/lenslite/api/LinkEventListener;Landroid/os/Handler;)V

    iget-object v0, v2, Leys;->A:Ldja;

    new-instance v4, Leyq;

    invoke-direct {v4, v2, v3}, Leyq;-><init>(Leys;Lhec;)V

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    sget-object v3, Lkvn;->a:Lnwh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkvm;

    invoke-direct {v5, v3, v4}, Lkvm;-><init>(Lnwh;Lkva;)V

    invoke-interface {v0, v5}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->setResultListener(Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLLinkResultListener;)V

    iget-object v0, v2, Leys;->e:Ljuf;

    iget-object v3, v2, Leys;->A:Ldja;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ledg;

    const/16 v5, 0x13

    invoke-direct {v4, v3, v5, v8}, Ledg;-><init>(Ldja;I[B)V

    invoke-virtual {v0, v4}, Ljuf;->d(Lkad;)V

    iget-object v0, v2, Leys;->e:Ljuf;

    iget-object v3, v2, Leys;->b:Ljwb;

    new-instance v4, Leus;

    invoke-direct {v4, v2, v6}, Leus;-><init>(Leys;I)V

    iget-object v5, v2, Leys;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v4, v5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, v2, Leys;->e:Ljuf;

    iget-object v3, v2, Leys;->A:Ldja;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ledg;

    const/16 v5, 0x14

    invoke-direct {v4, v3, v5, v8}, Ledg;-><init>(Ldja;I[B)V

    invoke-virtual {v0, v4}, Ljuf;->d(Lkad;)V

    iput-boolean v10, v2, Leys;->n:Z

    invoke-virtual {v2}, Leys;->e()V

    return-void

    :cond_1b
    :try_start_8
    const-string v0, "No engine implementation found"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    iget-object v0, v2, Leys;->l:Lfbz;

    sget-object v3, Lnjg;->f:Lnjg;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v2, v2, Leys;->u:Ljava/lang/String;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1c
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lnjg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lnjg;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v4, Lnjg;->a:I

    iput-object v2, v4, Lnjg;->e:Ljava/lang/String;

    sget-object v2, Lnjh;->f:Lnjh;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnjh;

    iput v5, v4, Lnjh;->b:I

    iget v5, v4, Lnjh;->a:I

    or-int/2addr v5, v10

    iput v5, v4, Lnjh;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnjh;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1e
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lnjg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v4, Lnjg;->b:Lnjh;

    iget v2, v4, Lnjg;->a:I

    or-int/2addr v2, v10

    iput v2, v4, Lnjg;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnjg;

    invoke-interface {v0, v2}, Lfbz;->w(Lnjg;)V

    return-void
.end method
