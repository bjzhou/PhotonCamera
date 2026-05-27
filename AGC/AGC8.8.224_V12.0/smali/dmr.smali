.class final Ldmr;
.super Lkfg;


# instance fields
.field final synthetic a:Ldms;


# direct methods
.method public constructor <init>(Ldms;)V
    .locals 0

    iput-object p1, p0, Ldmr;->a:Ldms;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 2

    iget-object p1, p0, Ldmr;->a:Ldms;

    iget-object p1, p1, Ldms;->b:Lcom/google/android/apps/camera/debugui/DebugCanvasView;

    if-nez p1, :cond_0

    sget-object p1, Ldms;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "UI view not yet initialized"

    const/16 v1, 0x3e5

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->a:Z

    return-void
.end method

.method public final br(Lkoq;)V
    .locals 0

    return-void
.end method
