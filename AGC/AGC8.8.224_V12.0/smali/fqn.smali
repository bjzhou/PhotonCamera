.class final Lfqn;
.super Ljava/lang/Object;

# interfaces
.implements Lecx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lkou;

.field final synthetic c:Lkpb;

.field final synthetic d:Lkma;

.field final synthetic e:Lfsl;

.field final synthetic f:Lfqp;

.field final synthetic g:Lnom;


# direct methods
.method public constructor <init>(Lfqp;Lnom;JLkou;Lkpb;Lkma;Lfsl;[B[B)V
    .locals 0

    iput-object p1, p0, Lfqn;->f:Lfqp;

    iput-object p2, p0, Lfqn;->g:Lnom;

    iput-wide p3, p0, Lfqn;->a:J

    iput-object p5, p0, Lfqn;->b:Lkou;

    iput-object p6, p0, Lfqn;->c:Lkpb;

    iput-object p7, p0, Lfqn;->d:Lkma;

    iput-object p8, p0, Lfqn;->e:Lfsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leea;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 4

    new-instance p1, Liac;

    iget-object v0, p0, Lfqn;->g:Lnom;

    iget-object v0, v0, Lnom;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lfqn;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lfqn;->b:Lkou;

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v2

    iget-object v3, p0, Lfqn;->g:Lnom;

    iget-boolean v3, v3, Lnom;->a:Z

    check-cast v0, Lgyq;

    invoke-direct {p1, v0, v1, v2, v3}, Liac;-><init>(Lgyq;Ljava/lang/Long;Lnou;Z)V

    invoke-static {p2}, Lnsy;->g(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p2

    iget-object v0, p0, Lfqn;->f:Lfqp;

    iget-object v0, v0, Lfqp;->d:Lfqq;

    iget-object v1, p0, Lfqn;->c:Lkpb;

    invoke-interface {v0, p1, p2, v1, p3}, Lfqq;->a(Liac;Lcom/google/googlex/gcam/YuvWriteView;Lkpb;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p1

    iget-object p2, p0, Lfqn;->d:Lkma;

    invoke-virtual {p2}, Lkma;->l()V

    iget-object p2, p0, Lfqn;->e:Lfsl;

    invoke-interface {p2, p1}, Lfsl;->c(Lkpb;)V

    return-void
.end method
