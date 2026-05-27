.class final Ldtn;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field final synthetic b:Ldtt;


# direct methods
.method public constructor <init>(Lkeb;Ldtt;)V
    .locals 0

    iput-object p1, p0, Ldtn;->a:Lkeb;

    iput-object p2, p0, Ldtn;->b:Ldtt;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bw(Lkou;)V
    .locals 4

    iget-object v0, p0, Ldtn;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ldtn;->b:Ldtt;

    iget-wide v2, v0, Lkeg;->b:J

    invoke-interface {v1, v2, v3, p1}, Ldtt;->a(JLkou;)V

    :cond_0
    return-void
.end method
