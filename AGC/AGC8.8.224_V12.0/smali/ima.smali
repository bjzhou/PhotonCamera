.class public final Lima;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field private final b:F

.field private c:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lima;->c:F

    iput v0, p0, Lima;->a:F

    int-to-float p1, p1

    iput p1, p0, Lima;->b:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    iget v0, p0, Lima;->c:F

    iget v1, p0, Lima;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-float v1, v0, v2

    :goto_0
    iput v1, p0, Lima;->c:F

    div-float v0, v2, v1

    iget v1, p0, Lima;->a:F

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    mul-float p1, p1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lima;->a:F

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lima;->c:F

    iput v0, p0, Lima;->a:F

    return-void
.end method
