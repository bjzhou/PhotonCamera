.class public final Lcea;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Limq;

.field private final d:Ldhi;

.field private final e:Ljvs;

.field private final f:Lknz;


# direct methods
.method public constructor <init>(Lknz;Limq;Ldhi;IZLjvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcea;->a:I

    iput-boolean p5, p0, Lcea;->b:Z

    iput-object p1, p0, Lcea;->f:Lknz;

    iput-object p2, p0, Lcea;->c:Limq;

    iput-object p3, p0, Lcea;->d:Ldhi;

    iput-object p6, p0, Lcea;->e:Ljvs;

    return-void
.end method

.method public static a(IILimq;ZLdhi;)I
    .locals 3

    sget-object v0, Ldho;->bT:Ldhj;

    invoke-interface {p4, v0}, Ldhi;->l(Ldhj;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Limq;->d()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {p1}, Lkab;->b(I)Lkab;

    move-result-object p1

    iget-boolean p3, p2, Limq;->a:Z

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Limq;->f()[F

    move-result-object p3

    const/4 p4, 0x5

    aget p4, p3, p4

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p4, v0

    const/4 v0, 0x4

    aget p3, p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float p3, p3, v1

    if-lez p3, :cond_1

    cmpg-float p1, p4, v2

    if-gez p1, :cond_0

    const/16 p1, 0xb4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p3, p3, p4

    if-gez p3, :cond_3

    cmpg-float p1, v0, v2

    if-gez p1, :cond_2

    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0x10e

    :goto_0
    invoke-static {p1}, Lkab;->b(I)Lkab;

    move-result-object p1

    :cond_3
    iget p1, p1, Lkab;->e:I

    invoke-virtual {p2}, Limq;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    :cond_5
    :goto_1
    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public static b(ILimq;Lkli;Ljvs;Ldhi;)I
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p2, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Ldho;->bU:Ldhj;

    invoke-interface {p4, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkli;->f()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, p0, p1, p3, p4}, Lcea;->a(IILimq;ZLdhi;)I

    move-result p0

    return p0

    :cond_2
    return p3
.end method


# virtual methods
.method public final c()Ljvs;
    .locals 3

    new-instance v0, Lgfr;

    iget-object v1, p0, Lcea;->f:Lknz;

    invoke-direct {v0, v1}, Lgfr;-><init>(Lknz;)V

    new-instance v1, Ldza;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ldza;-><init>(Lcea;I)V

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkab;
    .locals 1

    iget-object v0, p0, Lcea;->f:Lknz;

    invoke-virtual {v0}, Lknz;->a()Lkab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcea;->e(Lkab;)Lkab;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lkab;)Lkab;
    .locals 4

    iget-object v0, p0, Lcea;->d:Ldhi;

    sget-object v1, Ldho;->bU:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcea;->e:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcea;->a:I

    :goto_0
    iget p1, p1, Lkab;->e:I

    iget-object v1, p0, Lcea;->c:Limq;

    iget-boolean v2, p0, Lcea;->b:Z

    iget-object v3, p0, Lcea;->d:Ldhi;

    invoke-static {v0, p1, v1, v2, v3}, Lcea;->a(IILimq;ZLdhi;)I

    move-result p1

    invoke-static {p1}, Lkab;->b(I)Lkab;

    move-result-object p1

    return-object p1
.end method
