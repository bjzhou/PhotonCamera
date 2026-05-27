.class final Ljth;
.super Ljtf;


# direct methods
.method public constructor <init>(Ljed;)V
    .locals 0

    invoke-direct {p0, p1}, Ljtf;-><init>(Ljed;)V

    return-void
.end method


# virtual methods
.method public final c(Ljrv;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Ljrv;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v1, Ljqu;

    iget p1, p1, Ljrv;->a:I

    invoke-static {p1}, Ljvd;->v(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2}, Ljqu;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Ljtf;->f(Ljava/lang/Object;)V

    return-void
.end method
