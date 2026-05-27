.class public final Lhhb;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field private final a:Lkbc;

.field private final b:Lhgy;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lhgy;Lkbc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhhb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lhhb;->b:Lhgy;

    iput-object p2, p0, Lhhb;->a:Lkbc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lhhb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhhb;->a:Lkbc;

    const-string v1, "AudioInit"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lhhb;->b:Lhgy;

    invoke-interface {v0}, Lhgy;->d()V

    iget-object v0, p0, Lhhb;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :cond_0
    return-void
.end method
