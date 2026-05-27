.class final Ldrr;
.super Ljava/lang/Object;

# interfaces
.implements Lfwu;


# instance fields
.field final synthetic a:Ldry;

.field final synthetic b:Lj$/time/Instant;

.field final synthetic c:Lmqp;

.field final synthetic d:Ldru;


# direct methods
.method public constructor <init>(Ldru;Ldry;Lj$/time/Instant;Lmqp;)V
    .locals 0

    iput-object p1, p0, Ldrr;->d:Ldru;

    iput-object p2, p0, Ldrr;->a:Ldry;

    iput-object p3, p0, Ldrr;->b:Lj$/time/Instant;

    iput-object p4, p0, Ldrr;->c:Lmqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 4

    iget-object v0, p0, Ldrr;->d:Ldru;

    new-instance v1, Ldrt;

    iget-object v2, p0, Ldrr;->a:Ldry;

    invoke-interface {v2}, Ldry;->a()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iget-object v3, p0, Ldrr;->b:Lj$/time/Instant;

    invoke-direct {v1, v0, v2, v3}, Ldrt;-><init>(Ldru;Landroid/hardware/HardwareBuffer;Lj$/time/Instant;)V

    iput-object v1, v0, Ldru;->e:Ldrt;

    iget-object v0, p0, Ldrr;->d:Ldru;

    iget-object v1, p0, Ldrr;->a:Ldry;

    iget-object v2, v0, Ldru;->a:Llbd;

    invoke-interface {v1, v2}, Ldry;->c(Llbd;)Llde;

    move-result-object v1

    iput-object v1, v0, Ldru;->f:Llde;

    iget-object v0, p0, Ldrr;->d:Ldru;

    iget-object v1, p0, Ldrr;->a:Ldry;

    iget-object v2, p0, Ldrr;->b:Lj$/time/Instant;

    iget-object v3, p0, Ldrr;->c:Lmqp;

    invoke-virtual {v0, v1, v2, v3}, Ldru;->a(Ldry;Lj$/time/Instant;Lmqp;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lnou;
    .locals 1

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v0

    return-object v0
.end method
