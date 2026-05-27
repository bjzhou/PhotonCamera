.class public abstract Lhdn;
.super Ljava/lang/Object;

# interfaces
.implements Lhdy;
.implements Lcmp;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lhec;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhdn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lhec;)V
    .locals 2

    iput-object p1, p0, Lhdn;->c:Lhec;

    invoke-virtual {p0}, Lhdn;->c()Lhdm;

    move-result-object p1

    iget-object p1, p1, Lhdm;->c:Lheb;

    invoke-virtual {p1}, Lheb;->b()Lhea;

    move-result-object p1

    new-instance v0, Lhbi;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lhbi;-><init>(Lhdn;I)V

    iput-object v0, p1, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lhea;->a()Lheb;

    return-void
.end method

.method protected abstract c()Lhdm;
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lhdn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final w()V
    .locals 0

    return-void
.end method
