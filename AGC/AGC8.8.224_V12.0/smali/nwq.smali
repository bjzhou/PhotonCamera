.class public abstract Lnwq;
.super Lnws;

# interfaces
.implements Lnxz;


# instance fields
.field public l:Lnwj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnwj;->a:Lnwj;

    iput-object v0, p0, Lnwq;->l:Lnwj;

    return-void
.end method


# virtual methods
.method public final c()Lnwj;
    .locals 2

    iget-object v0, p0, Lnwq;->l:Lnwj;

    iget-boolean v1, v0, Lnwj;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnwj;->c()Lnwj;

    move-result-object v0

    iput-object v0, p0, Lnwq;->l:Lnwj;

    :cond_0
    iget-object v0, p0, Lnwq;->l:Lnwj;

    return-object v0
.end method

.method public final e(Llhj;)V
    .locals 1

    iget-object p1, p1, Llhj;->a:Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnws;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
