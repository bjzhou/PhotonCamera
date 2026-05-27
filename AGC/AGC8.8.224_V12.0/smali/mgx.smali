.class public final Lmgx;
.super Ljava/lang/Object;


# static fields
.field private static final c:I


# instance fields
.field public final a:Z

.field public final b:I

.field private final d:I

.field private final e:I

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lmgx;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const v0, 0x7f04025a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lljr;->x(Landroid/content/Context;IZ)Z

    move-result v0

    const v2, 0x7f040259

    invoke-static {p1, v2, v1}, Lkwp;->m(Landroid/content/Context;II)I

    move-result v2

    const v3, 0x7f040258

    invoke-static {p1, v3, v1}, Lkwp;->m(Landroid/content/Context;II)I

    move-result v3

    const v4, 0x7f0401ae

    invoke-static {p1, v4, v1}, Lkwp;->m(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmgx;->a:Z

    iput v2, p0, Lmgx;->d:I

    iput v3, p0, Lmgx;->e:I

    iput v1, p0, Lmgx;->b:I

    iput p1, p0, Lmgx;->f:F

    return-void
.end method


# virtual methods
.method public final a(IF)I
    .locals 4

    iget v0, p0, Lmgx;->f:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_1

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    div-float/2addr p2, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    double-to-float p2, v2

    const/high16 v0, 0x40900000    # 4.5f

    mul-float p2, p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    invoke-static {p1, v2}, Lacp;->d(II)I

    move-result p1

    iget v2, p0, Lmgx;->d:I

    invoke-static {p1, v2, p2}, Lkwp;->n(IIF)I

    move-result p1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    iget p2, p0, Lmgx;->e:I

    if-eqz p2, :cond_2

    sget v1, Lmgx;->c:I

    invoke-static {p2, v1}, Lacp;->d(II)I

    move-result p2

    invoke-static {p2, p1}, Lacp;->c(II)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_1
    invoke-static {p1, v0}, Lacp;->d(II)I

    move-result p1

    return p1
.end method

.method public final b(IF)I
    .locals 2

    iget-boolean v0, p0, Lmgx;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lacp;->d(II)I

    move-result v0

    iget v1, p0, Lmgx;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lmgx;->a(IF)I

    move-result p1

    :cond_0
    return p1
.end method
