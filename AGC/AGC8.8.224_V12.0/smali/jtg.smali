.class final Ljtg;
.super Ljtf;


# direct methods
.method public constructor <init>(Ljed;)V
    .locals 0

    invoke-direct {p0, p1}, Ljtf;-><init>(Ljed;)V

    return-void
.end method


# virtual methods
.method public final b(Ljrl;)V
    .locals 3

    new-instance v0, Ljqu;

    iget v1, p1, Ljrl;->a:I

    invoke-static {v1}, Ljvd;->v(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object p1, p1, Ljrl;->b:Ljqv;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljqt;

    invoke-direct {v2, p1}, Ljqt;-><init>(Ljpu;)V

    move-object p1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljqu;-><init>(Lcom/google/android/gms/common/api/Status;Ljpu;I)V

    invoke-virtual {p0, v0}, Ljtf;->f(Ljava/lang/Object;)V

    return-void
.end method
