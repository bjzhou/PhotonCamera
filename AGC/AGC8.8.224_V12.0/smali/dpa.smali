.class Ldpa;
.super Ldoy;


# instance fields
.field final synthetic a:Ldpc;


# direct methods
.method public constructor <init>(Ldpc;)V
    .locals 0

    iput-object p1, p0, Ldpa;->a:Ldpc;

    invoke-direct {p0}, Ldoy;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public d(FLdok;)V
    .locals 2

    iget-object v0, p0, Ldpa;->a:Ldpc;

    iget-object v0, v0, Ldpc;->j:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldpa;->a:Ldpc;

    invoke-virtual {v0, p1, p2}, Ldpc;->m(FLdok;)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
