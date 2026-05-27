.class public final Ldgt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhj;

.field public static final b:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.auto_timer_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgt;->a:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.autotimer_accel_tpu"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgt;->b:Ldhj;

    return-void
.end method

.method public static a(Ldhm;)V
    .locals 2

    sget-object v0, Ldgt;->a:Ldhj;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgt;->b:Ldhj;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    return-void
.end method
