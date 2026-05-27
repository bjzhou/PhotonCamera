.class final Ljpr;
.super Ljpn;


# instance fields
.field private final a:Ljed;

.field private final b:Ljpo;

.field private final c:Ljnt;


# direct methods
.method public constructor <init>(Ljpo;Ljed;Ljnt;[B)V
    .locals 0

    invoke-direct {p0}, Ljpn;-><init>()V

    iput-object p1, p0, Ljpr;->b:Ljpo;

    iput-object p2, p0, Ljpr;->a:Ljed;

    iput-object p3, p0, Ljpr;->c:Ljnt;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljpr;->a:Ljed;

    invoke-interface {v0, p1}, Ljed;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Ljpr;->a:Ljed;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Ljed;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljpr;->a:Ljed;

    invoke-interface {v0, p1}, Ljed;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Ljpr;->c:Ljnt;

    if-nez p1, :cond_1

    iget-object p1, p0, Ljpr;->a:Ljed;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Ljed;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Ljpr;->b:Ljpo;

    invoke-virtual {v0, p1, p0}, Ljpo;->e(Ljnt;Ljpn;)V

    return-void
.end method
