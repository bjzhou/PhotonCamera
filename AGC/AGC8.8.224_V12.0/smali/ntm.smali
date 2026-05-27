.class public final Lntm;
.super Ljava/lang/Object;

# interfaces
.implements Ljkd;


# instance fields
.field public final a:Ljkd;

.field public final b:Lntg;

.field public final c:Lntq;

.field public volatile d:Ljava/util/Deque;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lntg;Ljkd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lntm;->d:Ljava/util/Deque;

    invoke-static {p2}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Lntm;->e:Ljava/util/concurrent/Executor;

    new-instance p2, Lntq;

    iget-object v0, p3, Lntg;->a:Lnth;

    if-nez v0, :cond_0

    sget-object v0, Lnth;->d:Lnth;

    :cond_0
    iget-object v0, v0, Lnth;->b:Lntf;

    if-nez v0, :cond_1

    sget-object v0, Lntf;->b:Lntf;

    :cond_1
    invoke-direct {p2, p1, v0}, Lntq;-><init>(Landroid/content/Context;Lntf;)V

    iput-object p2, p0, Lntm;->c:Lntq;

    iput-object p3, p0, Lntm;->b:Lntg;

    iput-object p4, p0, Lntm;->a:Ljkd;

    return-void
.end method


# virtual methods
.method public final a(Ljkc;)V
    .locals 2

    iget-object v0, p0, Lntm;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lntk;

    invoke-direct {v1, p0, p1}, Lntk;-><init>(Lntm;Ljkc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lnto;->b:Lloi;

    const-string v1, "request() called"

    invoke-virtual {v0, v1}, Lloi;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lntm;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Llmm;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Llmm;-><init>(Lntm;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
