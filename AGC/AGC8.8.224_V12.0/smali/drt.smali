.class public final Ldrt;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lj$/time/Instant;

.field public final b:Lnph;

.field public final c:Lnph;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/hardware/HardwareBuffer;

.field public final synthetic f:Ldru;


# direct methods
.method public constructor <init>(Ldru;Landroid/hardware/HardwareBuffer;Lj$/time/Instant;)V
    .locals 1

    iput-object p1, p0, Ldrt;->f:Ldru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Ldrt;->b:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Ldrt;->c:Lnph;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldrt;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldrt;->e:Landroid/hardware/HardwareBuffer;

    iput-object p3, p0, Ldrt;->a:Lj$/time/Instant;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
