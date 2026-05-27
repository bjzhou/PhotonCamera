.class public final Lgte;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;


# instance fields
.field private final a:Lhmz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljwb;Ljwb;Lhna;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lhnd;->g(Lhna;)V

    const-string p4, "liveRectiface"

    invoke-virtual {v0, p4}, Lhnd;->d(Ljava/lang/String;)V

    new-instance p4, Lgps;

    const/4 v1, 0x4

    invoke-direct {p4, p2, p3, v1}, Lgps;-><init>(Ljwb;Ljwb;I)V

    invoke-virtual {v0, p4}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance p4, Lgps;

    const/4 v1, 0x5

    invoke-direct {p4, p2, p3, v1}, Lgps;-><init>(Ljwb;Ljwb;I)V

    invoke-virtual {v0, p4}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lhnd;->a()Lhne;

    move-result-object p1

    iput-object p1, p0, Lgte;->a:Lhmz;

    return-void
.end method


# virtual methods
.method public final bG(Lhna;)V
    .locals 1

    iget-object v0, p0, Lgte;->a:Lhmz;

    invoke-interface {v0, p1}, Lhmz;->bG(Lhna;)V

    return-void
.end method
