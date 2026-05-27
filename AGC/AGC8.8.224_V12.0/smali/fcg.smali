.class public final Lfcg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:F

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:F

.field public final h:Ljava/lang/Boolean;

.field public final i:Landroid/graphics/Rect;

.field public final j:Ljava/lang/Boolean;

.field public final k:Ljava/lang/Boolean;

.field public final l:Lnhr;

.field public final m:Lmqp;

.field public final n:Lnik;

.field public final o:Z

.field public final p:Z

.field public final q:Lmqp;

.field public final r:I

.field public final s:I

.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZFLjava/lang/String;ZZZFLjava/lang/Boolean;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;ILnhr;Lmqp;Lnik;ZZLmqp;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lfcg;->r:I

    move-object v1, p2

    iput-object v1, v0, Lfcg;->t:Ljava/lang/String;

    move v1, p3

    iput-boolean v1, v0, Lfcg;->a:Z

    move v1, p4

    iput v1, v0, Lfcg;->b:F

    move-object v1, p5

    iput-object v1, v0, Lfcg;->c:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Lfcg;->d:Z

    move v1, p7

    iput-boolean v1, v0, Lfcg;->e:Z

    move v1, p8

    iput-boolean v1, v0, Lfcg;->f:Z

    move v1, p9

    iput v1, v0, Lfcg;->g:F

    move-object v1, p10

    iput-object v1, v0, Lfcg;->h:Ljava/lang/Boolean;

    move-object v1, p11

    iput-object v1, v0, Lfcg;->i:Landroid/graphics/Rect;

    move-object v1, p12

    iput-object v1, v0, Lfcg;->j:Ljava/lang/Boolean;

    move-object v1, p13

    iput-object v1, v0, Lfcg;->k:Ljava/lang/Boolean;

    move/from16 v1, p14

    iput v1, v0, Lfcg;->s:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lfcg;->l:Lnhr;

    move-object/from16 v1, p16

    iput-object v1, v0, Lfcg;->m:Lmqp;

    move-object/from16 v1, p17

    iput-object v1, v0, Lfcg;->n:Lnik;

    move/from16 v1, p18

    iput-boolean v1, v0, Lfcg;->o:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lfcg;->p:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lfcg;->q:Lmqp;

    return-void
.end method

.method public static a()Lfcf;
    .locals 2

    new-instance v0, Lfcf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfcf;-><init>([B)V

    const/4 v1, 0x1

    iput v1, v0, Lfcf;->f:I

    sget-object v1, Lnhr;->h:Lnhr;

    invoke-virtual {v0, v1}, Lfcf;->d(Lnhr;)V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lfcf;->c:Lmqp;

    sget-object v1, Lnik;->d:Lnik;

    invoke-virtual {v0, v1}, Lfcf;->f(Lnik;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfcf;->m(Z)V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lfcf;->d:Lmqp;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfcg;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lfcg;

    iget v1, p0, Lfcg;->r:I

    iget v3, p1, Lfcg;->r:I

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfcg;->t:Ljava/lang/String;

    iget-object v3, p1, Lfcg;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lfcg;->a:Z

    iget-boolean v3, p1, Lfcg;->a:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lfcg;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lfcg;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfcg;->c:Ljava/lang/String;

    iget-object v3, p1, Lfcg;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lfcg;->d:Z

    iget-boolean v3, p1, Lfcg;->d:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lfcg;->e:Z

    iget-boolean v3, p1, Lfcg;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lfcg;->f:Z

    iget-boolean v3, p1, Lfcg;->f:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lfcg;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lfcg;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfcg;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lfcg;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfcg;->i:Landroid/graphics/Rect;

    iget-object v3, p1, Lfcg;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfcg;->j:Ljava/lang/Boolean;

    iget-object v3, p1, Lfcg;->j:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfcg;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lfcg;->k:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lfcg;->s:I

    iget v3, p1, Lfcg;->s:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfcg;->l:Lnhr;

    iget-object v3, p1, Lfcg;->l:Lnhr;

    invoke-virtual {v1, v3}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfcg;->m:Lmqp;

    iget-object v3, p1, Lfcg;->m:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfcg;->n:Lnik;

    iget-object v3, p1, Lfcg;->n:Lnik;

    invoke-virtual {v1, v3}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lfcg;->o:Z

    iget-boolean v3, p1, Lfcg;->o:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lfcg;->p:Z

    iget-boolean v3, p1, Lfcg;->p:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfcg;->q:Lmqp;

    iget-object p1, p1, Lfcg;->q:Lmqp;

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_1
    throw v4

    :cond_2
    return v2

    :cond_3
    throw v4

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, Lfcg;->r:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const v2, 0xf4243

    xor-int/2addr v0, v2

    iget-object v3, p0, Lfcg;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    iget-boolean v3, p0, Lfcg;->a:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    const/4 v6, 0x1

    if-eq v6, v3, :cond_0

    const/16 v3, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v3, 0x4cf

    :goto_0
    iget v7, p0, Lfcg;->b:F

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v7

    iget-object v3, p0, Lfcg;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    iget-boolean v3, p0, Lfcg;->d:Z

    if-eq v6, v3, :cond_1

    const/16 v3, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v3, 0x4cf

    :goto_1
    iget-boolean v7, p0, Lfcg;->e:Z

    if-eq v6, v7, :cond_2

    const/16 v7, 0x4d5

    goto :goto_2

    :cond_2
    const/16 v7, 0x4cf

    :goto_2
    iget-boolean v8, p0, Lfcg;->f:Z

    if-eq v6, v8, :cond_3

    const/16 v8, 0x4d5

    goto :goto_3

    :cond_3
    const/16 v8, 0x4cf

    :goto_3
    iget v9, p0, Lfcg;->g:F

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v7

    mul-int v0, v0, v2

    xor-int/2addr v0, v8

    mul-int v0, v0, v2

    xor-int/2addr v0, v9

    iget-object v3, p0, Lfcg;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    iget-object v3, p0, Lfcg;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    iget-object v3, p0, Lfcg;->j:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    iget-object v3, p0, Lfcg;->k:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v3

    iget v3, p0, Lfcg;->s:I

    if-eqz v3, :cond_a

    mul-int v0, v0, v2

    iget-object v1, p0, Lfcg;->l:Lnhr;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lnws;->L()I

    move-result v1

    goto :goto_5

    :cond_4
    iget v7, v1, Lnws;->aG:I

    if-nez v7, :cond_5

    invoke-virtual {v1}, Lnws;->L()I

    move-result v7

    iput v7, v1, Lnws;->aG:I

    goto :goto_4

    :cond_5
    :goto_4
    move v1, v7

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    iget-object v1, p0, Lfcg;->m:Lmqp;

    invoke-virtual {v1}, Lmqp;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    iget-object v1, p0, Lfcg;->n:Lnik;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lnws;->L()I

    move-result v1

    goto :goto_7

    :cond_6
    iget v3, v1, Lnws;->aG:I

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lnws;->L()I

    move-result v3

    iput v3, v1, Lnws;->aG:I

    goto :goto_6

    :cond_7
    :goto_6
    move v1, v3

    :goto_7
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    iget-boolean v1, p0, Lfcg;->o:Z

    if-eq v6, v1, :cond_8

    const/16 v1, 0x4d5

    goto :goto_8

    :cond_8
    const/16 v1, 0x4cf

    :goto_8
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    iget-boolean v1, p0, Lfcg;->p:Z

    if-eq v6, v1, :cond_9

    goto :goto_9

    :cond_9
    const/16 v4, 0x4cf

    :goto_9
    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    iget-object v1, p0, Lfcg;->q:Lmqp;

    invoke-virtual {v1}, Lmqp;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_a
    throw v1

    :cond_b
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lfcg;->r:I

    const-string v2, "null"

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, v0, Lfcg;->t:Ljava/lang/String;

    iget-boolean v4, v0, Lfcg;->a:Z

    iget v5, v0, Lfcg;->b:F

    iget-object v6, v0, Lfcg;->c:Ljava/lang/String;

    iget-boolean v7, v0, Lfcg;->d:Z

    iget-boolean v8, v0, Lfcg;->e:Z

    iget-boolean v9, v0, Lfcg;->f:Z

    iget v10, v0, Lfcg;->g:F

    iget-object v11, v0, Lfcg;->h:Ljava/lang/Boolean;

    iget-object v12, v0, Lfcg;->i:Landroid/graphics/Rect;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lfcg;->j:Ljava/lang/Boolean;

    iget-object v14, v0, Lfcg;->k:Ljava/lang/Boolean;

    iget v15, v0, Lfcg;->s:I

    if-eqz v15, :cond_1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v15, v0, Lfcg;->l:Lnhr;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    iget-object v15, v0, Lfcg;->m:Lmqp;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    iget-object v15, v0, Lfcg;->n:Lnik;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    iget-boolean v15, v0, Lfcg;->o:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lfcg;->p:Z

    move/from16 v20, v15

    iget-object v15, v0, Lfcg;->q:Lmqp;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    const-string v15, "DecorateAtTimeCaptureRequestData{mode="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frontFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", flashSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", anglerfishOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gridLinesOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selfieMirrorOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timerSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", volumeButtonShutter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeSensorSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelfieFlashOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", afLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dualEvStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", manualWhiteBalanceStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frequentFaceMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPrivateStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", talkBackEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hotshotData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
