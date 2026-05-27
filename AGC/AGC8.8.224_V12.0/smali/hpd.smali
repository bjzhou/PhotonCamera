.class Lhpd;
.super Ljava/lang/Object;

# interfaces
.implements Lhou;


# instance fields
.field final synthetic b:Lhpg;


# direct methods
.method public constructor <init>(Lhpg;)V
    .locals 0

    iput-object p1, p0, Lhpd;->b:Lhpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic ck()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lhpd;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lhpq;->d(F)V

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhpd;->b:Lhpg;

    iget-object v0, v0, Lhpg;->j:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final synthetic i()V
    .locals 0

    return-void
.end method
