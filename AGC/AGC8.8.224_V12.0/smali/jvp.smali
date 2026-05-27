.class public final Ljvp;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljvq;

.field private final b:I


# direct methods
.method public constructor <init>(Ljvq;I)V
    .locals 0

    iput-object p1, p0, Ljvp;->a:Ljvq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljvp;->b:I

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljvp;->a:Ljvq;

    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    iget v1, p0, Ljvp;->b:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ljvp;->a:Ljvq;

    iget-boolean v0, p1, Ljvq;->a:Z

    if-nez v0, :cond_2

    iget-object p1, p1, Ljvq;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljvp;->a:Ljvq;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljvq;->a:Z

    :cond_2
    :goto_0
    iget-object p1, p0, Ljvp;->a:Ljvq;

    iget-boolean v0, p1, Ljvq;->a:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Ljvq;->b:Ljava/lang/Object;

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    iget-object v0, p0, Ljvp;->a:Ljvq;

    iget-object v0, v0, Ljvq;->d:Ljava/lang/Object;

    new-instance v1, Ljoq;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Ljoq;-><init>(Ljvp;Lmvv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
