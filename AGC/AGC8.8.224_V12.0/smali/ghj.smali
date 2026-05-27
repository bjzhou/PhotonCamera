.class final Lghj;
.super Ljava/lang/Object;

# interfaces
.implements Lghg;


# instance fields
.field final synthetic a:Lghk;


# direct methods
.method public constructor <init>(Lghk;)V
    .locals 0

    iput-object p1, p0, Lghj;->a:Lghk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkfh;
    .locals 3

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    iget-object v1, p0, Lghj;->a:Lghk;

    iget-boolean v1, v1, Lghk;->a:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lkff;->c(I)V

    invoke-virtual {v0, v2}, Lkff;->b(I)V

    invoke-virtual {v0, v2}, Lkff;->e(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkff;->d(Z)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method
