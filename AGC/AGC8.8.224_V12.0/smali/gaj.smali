.class public final Lgaj;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/photo/commands/ZslFallbackImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgaj;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgaj;->b:Lgam;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgaj;->b:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgaj;->b:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 3

    sget-object v0, Lgaj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x9e8

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Running fallback command: %s"

    iget-object v2, p0, Lgaj;->b:Lgam;

    invoke-interface {v0, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->k()Lhjc;

    move-result-object v0

    invoke-interface {v0}, Lhjc;->f()V

    iget-object v0, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->h()V

    iget-object v0, p0, Lgaj;->b:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void
.end method
