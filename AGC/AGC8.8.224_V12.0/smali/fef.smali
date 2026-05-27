.class public final Lfef;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfef;->a:Z

    iput-boolean v0, p0, Lfef;->b:Z

    iput-boolean v0, p0, Lfef;->c:Z

    return-void
.end method

.method public constructor <init>(Lfee;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lfee;->c:I

    int-to-float v0, v0

    iget v1, p1, Lfee;->e:I

    int-to-float v1, v1

    iget v2, p1, Lfee;->d:I

    int-to-float v2, v2

    iget v3, p1, Lfee;->f:I

    int-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v0, v0, v4

    div-float/2addr v0, v1

    iget-boolean v1, p1, Lfee;->b:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lfee;->g:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x428c0000    # 70.0f

    cmpl-float v7, v0, v1

    if-gez v7, :cond_0

    const/high16 v7, 0x43340000    # 180.0f

    mul-float v2, v2, v7

    div-float/2addr v2, v3

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lfef;->a:Z

    iget-boolean v1, p1, Lfee;->g:Z

    if-nez v1, :cond_2

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lfef;->b:Z

    iget-boolean p1, p1, Lfee;->h:Z

    iput-boolean p1, p0, Lfef;->c:Z

    return-void
.end method
