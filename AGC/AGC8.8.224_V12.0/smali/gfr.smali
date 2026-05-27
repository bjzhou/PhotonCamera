.class public final Lgfr;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field public final a:Lknz;

.field private final b:Ljuh;


# direct methods
.method public constructor <init>(Lknz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfr;->a:Lknz;

    new-instance p1, Ljuh;

    invoke-direct {p1}, Ljuh;-><init>()V

    iput-object p1, p0, Lgfr;->b:Ljuh;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 4

    new-instance v0, Lgfq;

    invoke-direct {v0, p2, p1}, Lgfq;-><init>(Ljava/util/concurrent/Executor;Lkai;)V

    iget-object v1, p0, Lgfr;->a:Lknz;

    invoke-virtual {v1, v0}, Lknz;->b(Lknx;)V

    iget-object v1, p0, Lgfr;->b:Ljuh;

    new-instance v2, Leow;

    const/16 v3, 0x13

    invoke-direct {v2, p0, p2, p1, v3}, Leow;-><init>(Lgfr;Ljava/util/concurrent/Executor;Lkai;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Leid;

    invoke-direct {p1, p0, v0, v3}, Leid;-><init>(Lgfr;Lknx;I)V

    return-object p1
.end method

.method public final bridge synthetic bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgfr;->a:Lknz;

    invoke-virtual {v0}, Lknz;->a()Lkab;

    move-result-object v0

    return-object v0
.end method
