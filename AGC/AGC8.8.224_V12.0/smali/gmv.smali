.class final Lgmv;
.super Ljava/lang/Object;

# interfaces
.implements Lecv;


# instance fields
.field final synthetic a:Lgmx;

.field final synthetic b:Lgkr;


# direct methods
.method public constructor <init>(Lgmx;Lgkr;[B[B)V
    .locals 0

    iput-object p1, p0, Lgmv;->a:Lgmx;

    iput-object p2, p0, Lgmv;->b:Lgkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leea;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    invoke-virtual {p1}, Leea;->a()I

    iget-object p1, p1, Leea;->d:Ljava/util/List;

    invoke-virtual {p0, p2, p3, p1}, Lgmv;->b(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V

    return-void
.end method

.method public final b(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lgmv;->a:Lgmx;

    iget-object v0, v0, Lgmx;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledk;

    iget-object v1, p0, Lgmv;->b:Lgkr;

    sget-object v2, Lefz;->c:Lefz;

    invoke-interface {v0, v1, v2}, Ledk;->d(Lgkr;Lefz;)Ledm;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ledm;->e(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V

    invoke-interface {v0}, Ledm;->close()V

    return-void
.end method
