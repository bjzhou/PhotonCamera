.class public abstract Liyw;
.super Liyv;


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Liyz;)V
    .locals 0

    invoke-direct {p0, p1}, Liyv;-><init>(Liyz;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    invoke-virtual {p0}, Liyw;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Liyw;->a:Z

    return-void
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Liyw;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a()V
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Liyw;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
