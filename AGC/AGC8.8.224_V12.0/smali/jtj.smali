.class final Ljtj;
.super Ljtf;


# direct methods
.method public constructor <init>(Ljed;)V
    .locals 0

    invoke-direct {p0, p1}, Ljtf;-><init>(Ljed;)V

    return-void
.end method


# virtual methods
.method public final d(Ljtc;)V
    .locals 2

    new-instance v0, Ljsm;

    iget v1, p1, Ljtc;->a:I

    invoke-static {v1}, Ljvd;->v(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget p1, p1, Ljtc;->b:I

    invoke-direct {v0, v1, p1}, Ljsm;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, v0}, Ljtf;->f(Ljava/lang/Object;)V

    return-void
.end method
