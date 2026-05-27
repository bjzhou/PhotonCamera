.class public final Lhyp;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/Size;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/Rect;

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Rect;

.field private q:Z

.field private r:Z

.field private s:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lhyq;
    .locals 22

    move-object/from16 v0, p0

    iget-byte v1, v0, Lhyp;->s:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lhyp;->a:Landroid/util/Size;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->b:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->c:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->d:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->e:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->f:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->g:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->h:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->i:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->j:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->k:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->l:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->m:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->n:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->o:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhyp;->p:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lhyq;

    move-object v2, v1

    iget-object v3, v0, Lhyp;->a:Landroid/util/Size;

    iget-object v4, v0, Lhyp;->b:Landroid/graphics/Rect;

    iget-object v5, v0, Lhyp;->c:Landroid/graphics/Rect;

    iget-object v6, v0, Lhyp;->d:Landroid/graphics/Rect;

    iget-object v7, v0, Lhyp;->e:Landroid/graphics/Rect;

    iget-object v8, v0, Lhyp;->f:Landroid/graphics/Rect;

    iget-object v9, v0, Lhyp;->g:Landroid/graphics/Rect;

    iget-object v10, v0, Lhyp;->h:Landroid/graphics/Rect;

    iget-object v11, v0, Lhyp;->i:Landroid/graphics/Rect;

    iget-object v12, v0, Lhyp;->j:Landroid/graphics/Rect;

    iget-object v13, v0, Lhyp;->k:Landroid/graphics/Rect;

    iget-object v14, v0, Lhyp;->l:Landroid/graphics/Rect;

    iget-object v15, v0, Lhyp;->m:Landroid/graphics/Rect;

    move-object/from16 v21, v1

    iget-object v1, v0, Lhyp;->n:Landroid/graphics/Rect;

    move-object/from16 v16, v1

    iget-object v1, v0, Lhyp;->o:Landroid/graphics/Rect;

    move-object/from16 v17, v1

    iget-object v1, v0, Lhyp;->p:Landroid/graphics/Rect;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lhyp;->q:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lhyp;->r:Z

    move/from16 v20, v1

    invoke-direct/range {v2 .. v20}, Lhyq;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-object v21

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lhyp;->a:Landroid/util/Size;

    if-nez v2, :cond_2

    const-string v2, " window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lhyp;->b:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    const-string v2, " previewOverlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lhyp;->c:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    const-string v2, " optionsMenuContainer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, v0, Lhyp;->d:Landroid/graphics/Rect;

    if-nez v2, :cond_5

    const-string v2, " preview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lhyp;->e:Landroid/graphics/Rect;

    if-nez v2, :cond_6

    const-string v2, " uncoveredPreview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, v0, Lhyp;->f:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    const-string v2, " viewfinderCoverIconArea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v2, v0, Lhyp;->g:Landroid/graphics/Rect;

    if-nez v2, :cond_8

    const-string v2, " zoomUi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v2, v0, Lhyp;->h:Landroid/graphics/Rect;

    if-nez v2, :cond_9

    const-string v2, " bottomBar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, v0, Lhyp;->i:Landroid/graphics/Rect;

    if-nez v2, :cond_a

    const-string v2, " gradientBar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Lhyp;->j:Landroid/graphics/Rect;

    if-nez v2, :cond_b

    const-string v2, " fullScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Lhyp;->k:Landroid/graphics/Rect;

    if-nez v2, :cond_c

    const-string v2, " modeSwitchUi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v2, v0, Lhyp;->l:Landroid/graphics/Rect;

    if-nez v2, :cond_d

    const-string v2, " timerWidget"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, v0, Lhyp;->m:Landroid/graphics/Rect;

    if-nez v2, :cond_e

    const-string v2, " cutoutArea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v2, v0, Lhyp;->n:Landroid/graphics/Rect;

    if-nez v2, :cond_f

    const-string v2, " modeSlider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v2, v0, Lhyp;->o:Landroid/graphics/Rect;

    if-nez v2, :cond_10

    const-string v2, " previewWidgets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v2, v0, Lhyp;->p:Landroid/graphics/Rect;

    if-nez v2, :cond_11

    const-string v2, " moreModes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-byte v2, v0, Lhyp;->s:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_12

    const-string v2, " needsRetry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-byte v2, v0, Lhyp;->s:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_13

    const-string v2, " zoomInViewfinder"

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
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->h:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null bottomBar"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->m:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null cutoutArea"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->j:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null fullScreen"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->i:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null gradientBar"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->n:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null modeSlider"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->k:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null modeSwitchUi"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->p:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null moreModes"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lhyp;->q:Z

    iget-byte p1, p0, Lhyp;->s:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lhyp;->s:B

    return-void
.end method

.method public final j(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->c:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null optionsMenuContainer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->d:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null preview"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->b:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null previewOverlay"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->o:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null previewWidgets"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->l:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null timerWidget"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->e:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null uncoveredPreview"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->f:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null viewfinderCoverIconArea"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Landroid/util/Size;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->a:Landroid/util/Size;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null window"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lhyp;->r:Z

    iget-byte p1, p0, Lhyp;->s:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhyp;->s:B

    return-void
.end method

.method public final s(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyp;->g:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null zoomUi"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
