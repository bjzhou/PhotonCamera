.class public final Lfxn;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ldhi;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxn;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lfxn;->b:Ldhi;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 1

    new-instance v0, Lfxm;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Lfxm;-><init>(Lfxn;Lgxl;)V

    return-object v0
.end method

.method public final bridge synthetic b(Lgkr;)Lfyy;
    .locals 0

    invoke-virtual {p0, p1}, Lfxn;->c(Lgkr;)Lfxm;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lgkr;)Lfxm;
    .locals 1

    new-instance v0, Lfxm;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Lfxm;-><init>(Lfxn;Lgxl;)V

    return-object v0
.end method
