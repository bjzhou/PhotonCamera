.class public final Lhmf;
.super Lkfg;


# instance fields
.field private final a:Ljwb;

.field private final b:Ljwb;

.field private final c:Lhmi;

.field private final d:Ldbf;


# direct methods
.method public constructor <init>(Ljwb;Ljwb;Lhmi;Ldbf;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lhmf;->a:Ljwb;

    iput-object p2, p0, Lhmf;->b:Ljwb;

    iput-object p3, p0, Lhmf;->c:Lhmi;

    iput-object p4, p0, Lhmf;->d:Ldbf;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 6

    iget-object v0, p0, Lhmf;->d:Ldbf;

    invoke-virtual {v0}, Ldbf;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhmf;->c:Lhmi;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v5, v1, v2

    if-ltz v5, :cond_1

    iget-object v5, v0, Lhmi;->m:Ljava/lang/Float;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    iget v5, v0, Lhmi;->c:I

    iput v5, v0, Lhmi;->n:I

    iput-boolean v3, v0, Lhmi;->l:Z

    iput v4, v0, Lhmi;->i:I

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v0, Lhmi;->m:Ljava/lang/Float;

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v0}, Lhmi;->a()V

    sget-object v0, Lhmt;->a:Lhmt;

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, v0, Lhmi;->l:Z

    if-eqz v1, :cond_8

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lhmi;->e:Lily;

    invoke-virtual {v2, v1}, Lily;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Lhmi;->i:I

    add-int/2addr v1, v3

    iget v2, v0, Lhmi;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lhmi;->i:I

    goto :goto_0

    :cond_4
    iput v4, v0, Lhmi;->i:I

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lhmi;->c:I

    if-lt v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lhmi;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lhmi;->n:I

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lhmi;->a()V

    :cond_6
    if-eqz v1, :cond_7

    sget-object v0, Lhmt;->b:Lhmt;

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lhmt;->a:Lhmt;

    goto/16 :goto_2

    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_9

    sget-object v0, Lhmt;->a:Lhmt;

    goto/16 :goto_2

    :cond_9
    iget-object v2, v0, Lhmi;->d:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhmu;

    sget-object v5, Lhmu;->c:Lhmu;

    invoke-virtual {v2, v5}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lhmt;->b:Lhmt;

    goto :goto_2

    :cond_a
    iget-object v2, v0, Lhmi;->h:Ldhi;

    sget-object v5, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->e()V

    iget-object v2, v0, Lhmi;->d:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhmu;

    sget-object v5, Lhmu;->b:Lhmu;

    invoke-virtual {v2, v5}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lhmi;->e:Lily;

    invoke-virtual {v2, v1}, Lily;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lhmt;->b:Lhmt;

    goto :goto_2

    :cond_b
    iget v1, v0, Lhmi;->b:I

    invoke-virtual {v0, p1, v1}, Lhmi;->d(Lkou;I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lhmt;->c:Lhmt;

    goto :goto_2

    :cond_c
    sget-object v0, Lhmt;->a:Lhmt;

    goto :goto_2

    :cond_d
    iget-object v2, v0, Lhmi;->e:Lily;

    invoke-virtual {v2, v1}, Lily;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lhmi;->b()V

    invoke-virtual {v0}, Lhmi;->c()V

    sget-object v0, Lhmi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Current active lens is UW, even though Macro Focus is in OFF state."

    const/16 v2, 0xe9a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lhmt;->b:Lhmt;

    goto :goto_2

    :cond_e
    invoke-virtual {v0, p1, v3}, Lhmi;->d(Lkou;I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lhmt;->c:Lhmt;

    goto :goto_2

    :cond_f
    sget-object v0, Lhmt;->a:Lhmt;

    :goto_2
    iget-object v1, p0, Lhmf;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmt;

    invoke-virtual {v1, v0}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lhmf;->a:Ljwb;

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lhmf;->c:Lhmi;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgry;->a(I)Lgry;

    move-result-object p1

    invoke-virtual {p1}, Lgry;->b()Z

    move-result p1

    if-eqz p1, :cond_11

    iget p1, v0, Lhmi;->k:I

    add-int/2addr p1, v3

    iget v1, v0, Lhmi;->g:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lhmi;->k:I

    iput v4, v0, Lhmi;->j:I

    const/4 v1, 0x0

    goto :goto_3

    :cond_11
    iget p1, v0, Lhmi;->j:I

    add-int/2addr p1, v3

    iget v1, v0, Lhmi;->f:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lhmi;->j:I

    iput v4, v0, Lhmi;->k:I

    move v1, p1

    const/4 p1, 0x0

    :goto_3
    iget v2, v0, Lhmi;->g:I

    if-lt p1, v2, :cond_12

    iput-boolean v3, v0, Lhmi;->o:Z

    goto :goto_4

    :cond_12
    iget p1, v0, Lhmi;->f:I

    if-lt v1, p1, :cond_13

    iput-boolean v4, v0, Lhmi;->o:Z

    const/4 v3, 0x0

    goto :goto_4

    :cond_13
    iget-boolean v3, v0, Lhmi;->o:Z

    :goto_4
    iget-object p1, p0, Lhmf;->b:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lhmf;->b:Ljwb;

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method
