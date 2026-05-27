.class public final Lexq;
.super Ljava/lang/Object;

# interfaces
.implements Lexn;


# static fields
.field private static final a:[F

.field private static final b:[F


# instance fields
.field private final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lexq;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lexq;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexq;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(FLexi;[FII)V
    .locals 9

    int-to-float v0, p5

    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    iget-object v3, p0, Lexq;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x9

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_2

    const v5, 0x3faaaaab

    if-le p4, p5, :cond_0

    const v7, 0x3faaaaab

    goto :goto_1

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    if-le p4, p5, :cond_1

    goto :goto_2

    :cond_1
    const v6, 0x3faaaaab

    :goto_2
    sget-object v5, Lexq;->a:[F

    aget v5, v5, v4

    mul-float v5, v5, p1

    mul-float v5, v5, v2

    mul-float v5, v5, v7

    add-float/2addr v5, v1

    sget-object v7, Lexq;->b:[F

    aget v7, v7, v4

    mul-float v7, v7, p1

    mul-float v7, v7, v2

    mul-float v7, v7, v6

    add-float/2addr v7, v0

    iget-object v6, p0, Lexq;->c:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lexq;->c:Ljava/util/ArrayList;

    iget-object p4, p2, Lexi;->g:Lexu;

    if-eqz p4, :cond_5

    iget-object p5, p2, Lexi;->e:Lewl;

    if-nez p5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p4}, Lewj;->c()V

    iget-object p4, p2, Lexi;->g:Lexu;

    invoke-virtual {p4, v6}, Lexu;->j(F)V

    :goto_3
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v3, p4, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/PointF;

    iget-object p5, p2, Lexi;->e:Lewl;

    if-eqz p5, :cond_4

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p5, p3, v0, p4, v1}, Lewl;->f([FFFF)V
    :try_end_0
    .catch Lewi; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lewi;->printStackTrace()V

    return-void

    :cond_5
    :goto_4
    return-void
.end method
