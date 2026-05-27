.class public final Loqe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lopq;


# direct methods
.method public constructor <init>(Lopq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loqe;->a:Lopq;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loqe;->a:Lopq;

    sget-object v1, Lolb;->a:Lolb;

    invoke-virtual {v0, v1, p1}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loqe;->a:Lopq;

    invoke-virtual {v0}, Lopq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
