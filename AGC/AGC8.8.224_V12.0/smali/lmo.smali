.class public final Llmo;
.super Llkj;

# interfaces
.implements Llil;
.implements Llmj;


# instance fields
.field public final a:Logd;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Llhz;

.field private final d:Lnox;


# direct methods
.method public constructor <init>(Llij;Lnox;Logd;Loiw;Llhz;[B)V
    .locals 0

    const/4 p6, 0x0

    invoke-direct {p0, p6}, Llkj;-><init>([C)V

    new-instance p6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p6, p0, Llmo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Llmo;->d:Lnox;

    iput-object p3, p0, Llmo;->a:Logd;

    iput-object p5, p0, Llmo;->c:Llhz;

    sget-object p3, Llmn;->a:Llmn;

    invoke-virtual {p1, p2, p3, p4}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p5, p1}, Llhz;->a(F)Llmt;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ab()V
    .locals 2

    new-instance v0, Llmm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llmm;-><init>(Llmo;I)V

    iget-object v1, p0, Llmo;->d:Lnox;

    invoke-static {v0, v1}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method
