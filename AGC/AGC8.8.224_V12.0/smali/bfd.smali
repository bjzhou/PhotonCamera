.class public final Lbfd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Lbfp;

.field public b:Ljava/lang/String;

.field private c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lbff;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbfd;->b:Ljava/lang/String;

    iput-object v0, p0, Lbfd;->c:Ljava/util/Iterator;

    new-instance v1, Lbfp;

    invoke-direct {v1}, Lbfp;-><init>()V

    iput-object v1, p0, Lbfd;->a:Lbfp;

    iget-object p1, p1, Lbff;->a:Lbfi;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lbfq;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lbfb;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Lbfb;-><init>(Lbfd;Lbfi;Ljava/lang/String;I)V

    iput-object v1, p0, Lbfd;->c:Ljava/util/Iterator;

    return-void

    :cond_0
    new-instance v0, Lbfc;

    invoke-direct {v0, p0, p1}, Lbfc;-><init>(Lbfd;Lbfi;)V

    iput-object v0, p0, Lbfd;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lbfd;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbfd;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The XMPIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
