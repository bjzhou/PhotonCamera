.class public final Lear;
.super Ljava/lang/Object;

# interfaces
.implements Lkeb;


# instance fields
.field private final a:Lkeg;

.field private final b:Lkou;

.field private final c:Lkgq;


# direct methods
.method public constructor <init>(Lkeg;Lkgq;Lkou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lear;->a:Lkeg;

    iput-object p2, p0, Lear;->c:Lkgq;

    iput-object p3, p0, Lear;->b:Lkou;

    return-void
.end method


# virtual methods
.method public final a()Lkeb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lkeg;
    .locals 1

    iget-object v0, p0, Lear;->a:Lkeg;

    return-object v0
.end method

.method public final c()Lkou;
    .locals 1

    iget-object v0, p0, Lear;->b:Lkou;

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(Lkfj;)Lkpb;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()Lkgq;
    .locals 1

    iget-object v0, p0, Lear;->c:Lkgq;

    return-object v0
.end method

.method public final k(Lkfg;)V
    .locals 0

    invoke-virtual {p1}, Lkfg;->bj()V

    return-void
.end method
