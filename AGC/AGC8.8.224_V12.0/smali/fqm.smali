.class final Lfqm;
.super Ljava/lang/Object;

# interfaces
.implements Lecp;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lkou;

.field final synthetic c:Lkma;

.field final synthetic d:Lfsl;

.field final synthetic e:Lfqp;

.field final synthetic f:Lnom;


# direct methods
.method public constructor <init>(Lfqp;Lnom;JLkou;Lkma;Lfsl;[B[B)V
    .locals 0

    iput-object p1, p0, Lfqm;->e:Lfqp;

    iput-object p2, p0, Lfqm;->f:Lnom;

    iput-wide p3, p0, Lfqm;->a:J

    iput-object p5, p0, Lfqm;->b:Lkou;

    iput-object p6, p0, Lfqm;->c:Lkma;

    iput-object p7, p0, Lfqm;->d:Lfsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 5

    new-instance v0, Liac;

    iget-object v1, p0, Lfqm;->f:Lnom;

    iget-object v1, v1, Lnom;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lfqm;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lfqm;->b:Lkou;

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    iget-object v4, p0, Lfqm;->f:Lnom;

    iget-boolean v4, v4, Lnom;->a:Z

    check-cast v1, Lgyq;

    invoke-direct {v0, v1, v2, v3, v4}, Liac;-><init>(Lgyq;Ljava/lang/Long;Lnou;Z)V

    iget-object v1, p0, Lfqm;->e:Lfqp;

    iget-object v1, v1, Lfqp;->d:Lfqq;

    invoke-interface {v1, v0, p1, p2}, Lfqq;->b(Liac;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p1

    iget-object p2, p0, Lfqm;->c:Lkma;

    invoke-virtual {p2}, Lkma;->l()V

    iget-object p2, p0, Lfqm;->d:Lfsl;

    invoke-interface {p2, p1}, Lfsl;->c(Lkpb;)V

    return-void
.end method
