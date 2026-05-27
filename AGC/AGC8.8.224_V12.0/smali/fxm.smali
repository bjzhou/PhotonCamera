.class public final Lfxm;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field public final a:Lgpo;

.field public final b:Lkph;

.field public final synthetic c:Lfxn;


# direct methods
.method public constructor <init>(Lfxn;Lgxl;)V
    .locals 4

    iput-object p1, p0, Lfxm;->c:Lfxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgqo;

    invoke-direct {v0, p2}, Lgqo;-><init>(Lgxl;)V

    iput-object v0, p0, Lfxm;->a:Lgpo;

    move-object v1, p2

    check-cast v1, Lgwp;

    iget-object v1, v1, Lgwp;->b:Lgwd;

    invoke-virtual {v1}, Lgwd;->e()Lgpv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgpv;->a(Lgpx;)V

    invoke-interface {p2}, Lgxl;->g()Lgxr;

    move-result-object p2

    sget-object v0, Lkqr;->b:Lkqr;

    iget-object v1, p1, Lfxn;->b:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->e()V

    invoke-virtual {p2}, Lgxr;->c()Lkpl;

    move-result-object p2

    const/4 v1, 0x1

    const-string v2, "Raw"

    const-string v3, "dng"

    invoke-interface {p2, v1, v0, v2, v3}, Lkpl;->f(ILkqr;Ljava/lang/String;Ljava/lang/String;)Lkph;

    move-result-object p2

    iput-object p2, p0, Lfxm;->b:Lkph;

    iget-object p1, p1, Lfxn;->b:Ldhi;

    invoke-interface {p1}, Ldhi;->e()V

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Should not call RawModeImageSaver.addFullSizeImage()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
