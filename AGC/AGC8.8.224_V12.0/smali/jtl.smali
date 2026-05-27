.class public final Ljtl;
.super Ljsg;


# instance fields
.field public a:Ljfb;

.field public final b:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>([Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljsg;-><init>()V

    iput-object p1, p0, Ljtl;->b:[Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final b(Ljqx;)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method

.method public final d(Ljsp;)V
    .locals 3

    iget-object v0, p0, Ljtl;->a:Ljfb;

    if-eqz v0, :cond_0

    new-instance v1, Ljmy;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ljmy;-><init>(Ljsp;I)V

    invoke-virtual {v0, v1}, Ljfb;->b(Ljfa;)V

    :cond_0
    return-void
.end method

.method public final e(Ljsr;)V
    .locals 0

    iget-object p1, p1, Ljsr;->b:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method

.method public final f(Ljsp;Ljsc;)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Ljtl;->a:Ljfb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljfb;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljtl;->a:Ljfb;

    return-void
.end method
