.class public final Lhlf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhlf;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkqa;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lhlf;->a:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyyMMdd_HHmmssSSS"

    invoke-static {v4}, Lcom/agc/AdvancedSettings;->getPhotoSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "UTC"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    new-instance v3, Lkpz;

    invoke-direct {v3}, Lkpz;-><init>()V

    const-string v4, "IMG_"

    iput-object v4, v3, Lkpz;->a:Ljava/lang/String;

    iput-object v4, v3, Lkpz;->b:Ljava/lang/String;

    const-string v4, "VID_"

    iput-object v4, v3, Lkpz;->c:Ljava/lang/String;

    const-string v4, "_tmp."

    iput-object v4, v3, Lkpz;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lkpz;->d()V

    invoke-virtual {v3}, Lkpz;->b()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lkpz;->a(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lkpz;->e(Z)V

    invoke-virtual {v3, v5}, Lkpz;->f(Z)V

    sget-object v5, Lmza;->a:Lmza;

    invoke-virtual {v3, v5}, Lkpz;->c(Lmwn;)V

    iput-object v2, v3, Lkpz;->k:Ljava/text/DateFormat;

    invoke-virtual {v3}, Lkpz;->h()V

    const-string v2, ""

    iput-object v2, v3, Lkpz;->o:Ljava/lang/String;

    invoke-virtual {v3}, Lkpz;->i()V

    invoke-virtual {v3}, Lkpz;->g()V

    const/4 v2, 0x1

    iput-boolean v2, v3, Lkpz;->r:Z

    iget-byte v5, v3, Lkpz;->t:B

    or-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    iput-byte v5, v3, Lkpz;->t:B

    iput-object v1, v3, Lkpz;->m:Landroid/content/Context;

    invoke-static {}, Lcom/agc/AdvancedSettings;->getPhotoPrefix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lkpz;->a:Ljava/lang/String;

    iput-object v1, v3, Lkpz;->b:Ljava/lang/String;

    invoke-static {}, Lcom/agc/AdvancedSettings;->getVideoPrefix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lkpz;->c:Ljava/lang/String;

    const-string v1, "_PXL_"

    iput-object v1, v3, Lkpz;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lkpz;->d()V

    invoke-virtual {v3}, Lkpz;->b()V

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lkpz;->a(I)V

    const-string v5, "dng"

    invoke-static {v5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    invoke-virtual {v3, v5}, Lkpz;->c(Lmwn;)V

    invoke-virtual {v3, v2}, Lkpz;->e(Z)V

    invoke-virtual {v3, v2}, Lkpz;->f(Z)V

    invoke-virtual {v3}, Lkpz;->h()V

    const-string v5, "media"

    iput-object v5, v3, Lkpz;->o:Ljava/lang/String;

    invoke-virtual {v3}, Lkpz;->i()V

    invoke-virtual {v3}, Lkpz;->g()V

    iget-object v5, v3, Lkpz;->m:Landroid/content/Context;

    if-eqz v5, :cond_17

    invoke-static {v5}, Lkqo;->a(Landroid/content/Context;)Lkqn;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lkqn;->g(Landroid/net/Uri;)V

    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lkqn;->h(Landroid/net/Uri;)V

    const-string v6, "_display_name"

    iput-object v6, v5, Lkqn;->c:Ljava/lang/String;

    invoke-virtual {v5}, Lkqn;->f()V

    invoke-virtual {v5}, Lkqn;->b()V

    const-string v6, "relative_path"

    iput-object v6, v5, Lkqn;->e:Ljava/lang/String;

    invoke-virtual {v5}, Lkqn;->c()V

    invoke-virtual {v5, v2}, Lkqn;->d(I)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lkqn;->e(I)V

    invoke-virtual {v5}, Lkqn;->a()Lkqo;

    move-result-object v5

    iput-object v5, v3, Lkpz;->q:Lkqo;

    iget-object v5, v3, Lkpz;->l:Lmwa;

    if-nez v5, :cond_1

    sget-object v5, Lmyz;->a:Lmwa;

    iput-object v5, v3, Lkpz;->l:Lmwa;

    :cond_1
    iget-byte v5, v3, Lkpz;->t:B

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_3

    iget-object v8, v3, Lkpz;->a:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v9, v3, Lkpz;->b:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v10, v3, Lkpz;->c:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v11, v3, Lkpz;->d:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v12, v3, Lkpz;->e:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v13, v3, Lkpz;->f:Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v5, v3, Lkpz;->j:Lmwn;

    if-eqz v5, :cond_3

    iget-object v6, v3, Lkpz;->k:Ljava/text/DateFormat;

    if-eqz v6, :cond_3

    iget-object v15, v3, Lkpz;->m:Landroid/content/Context;

    if-eqz v15, :cond_3

    iget-object v14, v3, Lkpz;->n:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-object v7, v3, Lkpz;->o:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v4, v3, Lkpz;->p:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v1, v3, Lkpz;->q:Lkqo;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lkqa;

    move-object/from16 v22, v7

    move-object v7, v2

    iget v0, v3, Lkpz;->g:I

    move-object/from16 v21, v14

    move v14, v0

    iget-boolean v0, v3, Lkpz;->h:Z

    move-object/from16 v20, v15

    move v15, v0

    iget-boolean v0, v3, Lkpz;->i:Z

    move/from16 v16, v0

    iget-object v0, v3, Lkpz;->l:Lmwa;

    move-object/from16 v19, v0

    iget-boolean v0, v3, Lkpz;->r:Z

    move/from16 v25, v0

    move-object v0, v2

    iget-wide v2, v3, Lkpz;->s:J

    move-wide/from16 v26, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v23, v4

    move-object/from16 v24, v1

    invoke-direct/range {v7 .. v27}, Lkqa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLmwn;Ljava/text/DateFormat;Lmwa;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkqo;ZJ)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v3, Lkpz;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " filenameDefaultPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, v3, Lkpz;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " filenameImagePrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, v3, Lkpz;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, " filenameVideoPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, v3, Lkpz;->d:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, " filenameTmpPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, v3, Lkpz;->e:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, " filenameBurstTagPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, v3, Lkpz;->f:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, " filenameBurstPrimaryTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-byte v1, v3, Lkpz;->t:B

    and-int/2addr v1, v2

    if-nez v1, :cond_a

    const-string v1, " filenameBurstDigitCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-byte v1, v3, Lkpz;->t:B

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_b

    const-string v1, " filenameBurstTagRequired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-byte v1, v3, Lkpz;->t:B

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-nez v1, :cond_c

    const-string v1, " filenameBurstUseGroupTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, v3, Lkpz;->j:Lmwn;

    if-nez v1, :cond_d

    const-string v1, " filenameBurstSequenceExtensionsSortedLast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, v3, Lkpz;->k:Ljava/text/DateFormat;

    if-nez v1, :cond_e

    const-string v1, " filenameGroupFormat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, v3, Lkpz;->m:Landroid/content/Context;

    if-nez v1, :cond_f

    const-string v1, " storageContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, v3, Lkpz;->n:Ljava/lang/String;

    if-nez v1, :cond_10

    const-string v1, " storageCacheSubpath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, v3, Lkpz;->o:Ljava/lang/String;

    if-nez v1, :cond_11

    const-string v1, " storageDataSubpath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v1, v3, Lkpz;->p:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, " storageDcimSubpath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v1, v3, Lkpz;->q:Lkqo;

    if-nez v1, :cond_13

    const-string v1, " defaultContentResolverApi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-byte v1, v3, Lkpz;->t:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_14

    const-string v1, " notifyChangeOnPublish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-byte v1, v3, Lkpz;->t:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_15

    const-string v1, " notifyChangeTimeoutMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-byte v1, v3, Lkpz;->t:B

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_16

    const-string v1, " storageAutoPublishTimeoutMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"storageContext\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhlf;->a()Lkqa;

    move-result-object v0

    return-object v0
.end method
