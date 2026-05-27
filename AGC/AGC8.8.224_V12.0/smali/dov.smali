.class Ldov;
.super Ldos;


# instance fields
.field final synthetic a:Ldox;


# direct methods
.method public constructor <init>(Ldox;)V
    .locals 0

    iput-object p1, p0, Ldov;->a:Ldox;

    invoke-direct {p0}, Ldos;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public d(ZZ)V
    .locals 1

    iget-object v0, p0, Ldov;->a:Ldox;

    invoke-virtual {v0, p1, p2}, Ldox;->i(ZZ)V

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
