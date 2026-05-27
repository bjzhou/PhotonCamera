.class final Lfpk;
.super Ljava/lang/Object;

# interfaces
.implements Lfsd;


# instance fields
.field final synthetic a:Lkma;

.field final synthetic b:J

.field final synthetic c:Lkou;

.field final synthetic d:Lkpb;

.field final synthetic e:Lkpb;

.field final synthetic f:Lfsl;

.field final synthetic g:Lkaq;

.field final synthetic h:Lfpl;

.field final synthetic i:Lnom;


# direct methods
.method public constructor <init>(Lfpl;Lkma;Lnom;JLkou;Lkpb;Lkpb;Lfsl;Lkaq;[B[B)V
    .locals 0

    iput-object p1, p0, Lfpk;->h:Lfpl;

    iput-object p2, p0, Lfpk;->a:Lkma;

    iput-object p3, p0, Lfpk;->i:Lnom;

    iput-wide p4, p0, Lfpk;->b:J

    iput-object p6, p0, Lfpk;->c:Lkou;

    iput-object p7, p0, Lfpk;->d:Lkpb;

    iput-object p8, p0, Lfpk;->e:Lkpb;

    iput-object p9, p0, Lfpk;->f:Lfsl;

    iput-object p10, p0, Lfpk;->g:Lkaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;
    .locals 5

    new-instance v0, Liac;

    iget-object v1, p0, Lfpk;->i:Lnom;

    iget-object v1, v1, Lnom;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lfpk;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lfpk;->c:Lkou;

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    iget-object v4, p0, Lfpk;->i:Lnom;

    iget-boolean v4, v4, Lnom;->a:Z

    check-cast v1, Lgyq;

    invoke-direct {v0, v1, v2, v3, v4}, Liac;-><init>(Lgyq;Ljava/lang/Long;Lnou;Z)V

    iget-object v1, p0, Lfpk;->h:Lfpl;

    iget-object v1, v1, Lfpl;->a:Lfqq;

    invoke-interface {v1, v0, p1, p2}, Lfqq;->b(Liac;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lfpk;->a:Lkma;

    invoke-virtual {v0}, Lkma;->l()V

    iget-object v0, p0, Lfpk;->e:Lkpb;

    invoke-interface {v0}, Lkpb;->close()V

    iget-object v0, p0, Lfpk;->g:Lkaq;

    const-string v1, "Couldn\'t retrieve Rgb result from FastMomentsHdr"

    invoke-interface {v0, v1, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lfpk;->f:Lfsl;

    invoke-interface {v0, p1}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    iget-object v0, p0, Lfpk;->a:Lkma;

    invoke-virtual {v0}, Lkma;->l()V

    invoke-direct {p0, p1, p2}, Lfpk;->e(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p1

    iget-object p2, p0, Lfpk;->e:Lkpb;

    invoke-interface {p2}, Lkpb;->close()V

    iget-object p2, p0, Lfpk;->f:Lfsl;

    invoke-interface {p2, p1}, Lfsl;->c(Lkpb;)V

    return-void
.end method

.method public final c(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 5

    iget-object v0, p0, Lfpk;->a:Lkma;

    invoke-virtual {v0}, Lkma;->l()V

    new-instance v0, Liac;

    iget-object v1, p0, Lfpk;->i:Lnom;

    iget-object v1, v1, Lnom;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lfpk;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lfpk;->c:Lkou;

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    iget-object v4, p0, Lfpk;->i:Lnom;

    iget-boolean v4, v4, Lnom;->a:Z

    check-cast v1, Lgyq;

    invoke-direct {v0, v1, v2, v3, v4}, Liac;-><init>(Lgyq;Ljava/lang/Long;Lnou;Z)V

    invoke-static {p1}, Lnsy;->g(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p1

    iget-object v1, p0, Lfpk;->h:Lfpl;

    iget-object v1, v1, Lfpl;->a:Lfqq;

    iget-object v2, p0, Lfpk;->d:Lkpb;

    invoke-interface {v1, v0, p1, v2, p2}, Lfqq;->a(Liac;Lcom/google/googlex/gcam/YuvWriteView;Lkpb;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p1

    iget-object p2, p0, Lfpk;->e:Lkpb;

    invoke-interface {p2}, Lkpb;->close()V

    iget-object p2, p0, Lfpk;->f:Lfsl;

    invoke-interface {p2, p1}, Lfsl;->c(Lkpb;)V

    return-void
.end method

.method public final d(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    iget-object v0, p0, Lfpk;->a:Lkma;

    invoke-virtual {v0}, Lkma;->l()V

    invoke-direct {p0, p1, p2}, Lfpk;->e(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p1

    iget-object p2, p0, Lfpk;->e:Lkpb;

    invoke-interface {p2}, Lkpb;->close()V

    iget-object p2, p0, Lfpk;->f:Lfsl;

    invoke-interface {p2, p1}, Lfsl;->c(Lkpb;)V

    return-void
.end method
