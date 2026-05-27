.class Lhvr;
.super Lhvq;


# instance fields
.field final synthetic b:Lhvt;


# direct methods
.method public constructor <init>(Lhvt;)V
    .locals 0

    iput-object p1, p0, Lhvr;->b:Lhvt;

    invoke-direct {p0}, Lhvq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhvr;->b:Lhvt;

    iget-object v0, v0, Lhvt;->g:Lhwu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhvr;->b:Lhvt;

    iget-object v0, v0, Lhvt;->g:Lhwu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    return-void
.end method
