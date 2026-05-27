.class public final Llmt;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Sampling rate should be a floating number >= 0 and <= 1."

    invoke-static {v1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iput p2, p0, Llmt;->a:F

    iput-object p1, p0, Llmt;->b:Ljava/util/Random;

    return-void
.end method
