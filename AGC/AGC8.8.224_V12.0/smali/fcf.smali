.class public final Lfcf;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Lmqp;

.field public d:Lmqp;

.field public e:I

.field public f:I

.field private g:Z

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:F

.field private n:Landroid/graphics/Rect;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Boolean;

.field private q:Lnhr;

.field private r:Lnik;

.field private s:Z

.field private t:Z

.field private u:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lfcf;->c:Lmqp;

    iput-object p1, p0, Lfcf;->d:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Lfcg;
    .locals 26

    move-object/from16 v0, p0

    iget-byte v1, v0, Lfcf;->u:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v4, v0, Lfcf;->e:I

    if-eqz v4, :cond_1

    iget-object v5, v0, Lfcf;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v8, v0, Lfcf;->i:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v13, v0, Lfcf;->b:Ljava/lang/Boolean;

    if-eqz v13, :cond_1

    iget-object v14, v0, Lfcf;->n:Landroid/graphics/Rect;

    if-eqz v14, :cond_1

    iget-object v15, v0, Lfcf;->o:Ljava/lang/Boolean;

    if-eqz v15, :cond_1

    iget-object v1, v0, Lfcf;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget v2, v0, Lfcf;->f:I

    if-eqz v2, :cond_1

    iget-object v12, v0, Lfcf;->q:Lnhr;

    if-eqz v12, :cond_1

    iget-object v11, v0, Lfcf;->r:Lnik;

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v24, Lfcg;

    move-object/from16 v3, v24

    iget-boolean v6, v0, Lfcf;->g:Z

    iget v7, v0, Lfcf;->h:F

    iget-boolean v9, v0, Lfcf;->j:Z

    iget-boolean v10, v0, Lfcf;->k:Z

    move-object/from16 v16, v11

    iget-boolean v11, v0, Lfcf;->l:Z

    move-object/from16 v20, v16

    move-object/from16 v16, v12

    iget v12, v0, Lfcf;->m:F

    move-object/from16 v18, v16

    move-object/from16 v25, v3

    iget-object v3, v0, Lfcf;->c:Lmqp;

    move-object/from16 v19, v3

    iget-boolean v3, v0, Lfcf;->s:Z

    move/from16 v21, v3

    iget-boolean v3, v0, Lfcf;->t:Z

    move/from16 v22, v3

    iget-object v3, v0, Lfcf;->d:Lmqp;

    move-object/from16 v23, v3

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v3, v25

    invoke-direct/range {v3 .. v23}, Lfcg;-><init>(ILjava/lang/String;ZFLjava/lang/String;ZZZFLjava/lang/Boolean;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;ILnhr;Lmqp;Lnik;ZZLmqp;)V

    return-object v24

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lfcf;->e:I

    if-nez v2, :cond_2

    const-string v2, " mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lfcf;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, " filename"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    const-string v2, " frontFacing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    const-string v2, " zoom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lfcf;->i:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, " flashSetting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    const-string v2, " anglerfishOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_8

    const-string v2, " gridLinesOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    const-string v2, " selfieMirrorOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_a

    const-string v2, " timerSeconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Lfcf;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    const-string v2, " volumeButtonShutter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Lfcf;->n:Landroid/graphics/Rect;

    if-nez v2, :cond_c

    const-string v2, " activeSensorSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v2, v0, Lfcf;->o:Ljava/lang/Boolean;

    if-nez v2, :cond_d

    const-string v2, " isSelfieFlashOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, v0, Lfcf;->p:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    const-string v2, " rawMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v2, v0, Lfcf;->f:I

    if-nez v2, :cond_f

    const-string v2, " afLockState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v2, v0, Lfcf;->q:Lnhr;

    if-nez v2, :cond_10

    const-string v2, " dualEvStats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v2, v0, Lfcf;->r:Lnik;

    if-nez v2, :cond_11

    const-string v2, " frequentFaceMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_12

    const-string v2, " isPrivateStorage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-byte v2, v0, Lfcf;->u:B

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_13

    const-string v2, " talkBackEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lfcf;->n:Landroid/graphics/Rect;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lfcf;->j:Z

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final d(Lnhr;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lfcf;->q:Lnhr;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null dualEvStats"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lfcf;->i:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null flashSetting"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lnik;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lfcf;->r:Lnik;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null frequentFaceMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lfcf;->g:Z

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lfcf;->k:Z

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lfcf;->s:Z

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final j(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lfcf;->o:Ljava/lang/Boolean;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null isSelfieFlashOn"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lfcf;->p:Ljava/lang/Boolean;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null rawMode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lfcf;->l:Z

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lfcf;->t:Z

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, -0x80

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, Lfcf;->m:F

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method

.method public final o(F)V
    .locals 0

    iput p1, p0, Lfcf;->h:F

    iget-byte p1, p0, Lfcf;->u:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lfcf;->u:B

    return-void
.end method
