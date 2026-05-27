.class public final synthetic Lgsz;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lkbc;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkbc;ZJZZZIZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgsz;->a:Landroid/content/Context;

    iput-object p2, p0, Lgsz;->b:Lkbc;

    iput-boolean p3, p0, Lgsz;->c:Z

    iput-wide p4, p0, Lgsz;->d:J

    iput-boolean p6, p0, Lgsz;->e:Z

    iput-boolean p7, p0, Lgsz;->f:Z

    iput-boolean p8, p0, Lgsz;->g:Z

    iput p9, p0, Lgsz;->k:I

    iput-boolean p10, p0, Lgsz;->h:Z

    iput-boolean p11, p0, Lgsz;->i:Z

    iput-boolean p12, p0, Lgsz;->j:Z

    iput p13, p0, Lgsz;->l:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lgsz;->a:Landroid/content/Context;

    iget-object v2, v1, Lgsz;->b:Lkbc;

    iget-boolean v3, v1, Lgsz;->c:Z

    iget-wide v4, v1, Lgsz;->d:J

    iget-boolean v6, v1, Lgsz;->e:Z

    iget-boolean v7, v1, Lgsz;->f:Z

    iget-boolean v8, v1, Lgsz;->g:Z

    iget v9, v1, Lgsz;->k:I

    iget-boolean v10, v1, Lgsz;->h:Z

    iget-boolean v11, v1, Lgsz;->i:Z

    iget-boolean v12, v1, Lgsz;->j:Z

    iget v13, v1, Lgsz;->l:I

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    const-string v15, "Must use credential protected storage"

    invoke-static {v14, v15}, Lmoz;->q(ZLjava/lang/Object;)V

    :try_start_0
    const-string v14, "SmartCaptureFQS#curator"

    invoke-interface {v2, v14}, Lkbc;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v3, "FaceFamiliarityProcessorVMImpl"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    sget-object v14, Lodf;->i:Lodf;

    invoke-virtual {v14}, Lnws;->O()Lnwn;

    move-result-object v14

    iget-object v15, v14, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v14}, Lnwn;->p()V

    :cond_1
    iget-object v15, v14, Lnwn;->b:Lnws;

    move-object v1, v15

    check-cast v1, Lodf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    iget v2, v1, Lodf;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lodf;->a:I

    iput-object v3, v1, Lodf;->c:Ljava/lang/String;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v14}, Lnwn;->p()V

    :cond_2
    iget-object v1, v14, Lnwn;->b:Lnws;

    check-cast v1, Lodf;

    iget v2, v1, Lodf;->a:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v1, Lodf;->a:I

    iput-wide v4, v1, Lodf;->h:J

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lodf;

    if-eqz v6, :cond_3

    const-string v2, "SmartCaptureFaceAttributesV2Client"

    goto :goto_1

    :cond_3
    const-string v2, "SmartCaptureFaceAttributesV1Client"

    :goto_1
    sget-object v3, Lobg;->c:Lobg;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    check-cast v3, Lnwp;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4
    iget-object v4, v3, Lnwp;->b:Lnws;

    check-cast v4, Lobg;

    iget v5, v4, Lobg;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Lobg;->a:I

    iput-object v2, v4, Lobg;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lobg;

    sget-object v3, Locs;->r:Locs;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_5
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Locs;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Locs;->a:I

    const/high16 v14, 0x400000

    or-int/2addr v6, v14

    iput v6, v5, Locs;->a:I

    iput-object v4, v5, Locs;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_6
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Locs;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Locs;->a:I

    const/high16 v14, 0x800000

    or-int/2addr v6, v14

    iput v6, v5, Locs;->a:I

    iput-object v4, v5, Locs;->m:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_7
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Locs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Locs;->a:I

    const/high16 v14, 0x1000000

    or-int/2addr v6, v14

    iput v6, v5, Locs;->a:I

    iput-object v0, v5, Locs;->n:Ljava/lang/String;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_8
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v4, v0

    check-cast v4, Locs;

    iget v5, v4, Locs;->a:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Locs;->a:I

    const/4 v5, 0x3

    iput v5, v4, Locs;->g:I

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_9
    iget-object v0, v3, Lnwn;->b:Lnws;

    check-cast v0, Locs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Locs;->b:Lnxa;

    invoke-interface {v4}, Lnxa;->c()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v4}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v4

    iput-object v4, v0, Locs;->b:Lnxa;

    :cond_a
    iget-object v0, v0, Locs;->b:Lnxa;

    invoke-interface {v0, v2}, Lnxa;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_b
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v2, v0

    check-cast v2, Locs;

    iput v5, v2, Locs;->f:I

    iget v4, v2, Locs;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Locs;->a:I

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_c
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v2, v0

    check-cast v2, Locs;

    iget v4, v2, Locs;->a:I

    const/high16 v5, 0x2000000

    or-int/2addr v4, v5

    iput v4, v2, Locs;->a:I

    iput-boolean v7, v2, Locs;->o:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_d
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v2, v0

    check-cast v2, Locs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Locs;->q:Lodf;

    iget v1, v2, Locs;->a:I

    const/high16 v4, 0x8000000

    or-int/2addr v1, v4

    iput v1, v2, Locs;->a:I

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_e
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    iget v2, v1, Locs;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Locs;->a:I

    iput-boolean v8, v1, Locs;->h:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_f
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    iget v2, v1, Locs;->a:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Locs;->a:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Locs;->j:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_10
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Locs;->k:I

    iget v2, v1, Locs;->a:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v1, Locs;->a:I

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_11
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    iget v2, v1, Locs;->a:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v1, Locs;->a:I

    iput-boolean v10, v1, Locs;->i:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_12
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    iget v2, v1, Locs;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Locs;->a:I

    iput-boolean v11, v1, Locs;->d:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_13
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    iget v2, v1, Locs;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Locs;->a:I

    iput-boolean v12, v1, Locs;->e:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_14
    iget-object v0, v3, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Locs;

    add-int/lit8 v13, v13, -0x1

    iput v13, v1, Locs;->c:I

    iget v2, v1, Locs;->a:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v1, Locs;->a:I

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_15
    iget-object v0, v3, Lnwn;->b:Lnws;

    check-cast v0, Locs;

    iget v1, v0, Locs;->a:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Locs;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Locs;->p:Z

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Locs;

    new-instance v1, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->nativeCreateFromOptions([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;-><init>(J)V

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface/range {v16 .. v16}, Lkbc;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_2
    invoke-interface/range {v16 .. v16}, Lkbc;->f()V

    throw v0
.end method
