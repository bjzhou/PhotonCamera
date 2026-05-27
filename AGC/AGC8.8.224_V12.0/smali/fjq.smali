.class public final Lfjq;
.super Ljava/lang/Object;


# instance fields
.field public final a:[F


# direct methods
.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Expecting a 3-element array"

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Lfjq;->a:[F

    return-void
.end method
