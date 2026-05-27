.class public Loxo;
.super Loqs;


# instance fields
.field public final d:Loxl;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Loqs;-><init>()V

    new-instance v0, Loxl;

    invoke-direct {v0, p1, p2, p3, p4}, Loxl;-><init>(IIJ)V

    iput-object v0, p0, Loxo;->d:Loxl;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Loxo;->d:Loxl;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Loxo;->d:Loxl;

    invoke-virtual {v0}, Loxl;->close()V

    return-void
.end method

.method public final d(Lola;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Loxo;->d:Loxl;

    invoke-static {p1, p2}, Loxl;->e(Loxl;Ljava/lang/Runnable;)V

    return-void
.end method
