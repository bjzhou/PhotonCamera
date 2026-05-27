.class public final Lhiw;
.super Ljava/lang/Object;

# interfaces
.implements Lhis;
.implements Lhiv;


# instance fields
.field public final a:Lhis;

.field private final b:[Lhis;


# direct methods
.method public varargs constructor <init>(Lhis;[Lhis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhiw;->a:Lhis;

    iput-object p2, p0, Lhiw;->b:[Lhis;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget-object v0, p0, Lhiw;->a:Lhis;

    invoke-static {v0}, Ljcb;->k(Lhis;)V

    iget-object v0, p0, Lhiw;->b:[Lhis;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Ljcb;->k(Lhis;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lhiw;->a:Lhis;

    invoke-interface {v0}, Lhis;->f()V

    iget-object v0, p0, Lhiw;->b:[Lhis;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lhis;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lhiw;->b:[Lhis;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lhis;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhiw;->a:Lhis;

    invoke-interface {v0}, Lhis;->g()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
