.class public final Lmyh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lmyb;

.field private final b:Ljava/util/Iterator;

.field private c:Lmya;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lmyb;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyh;->a:Lmyb;

    iput-object p2, p0, Lmyh;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lmyh;->d:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lmyh;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmyh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmyh;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyh;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmya;

    iput-object v0, p0, Lmyh;->c:Lmya;

    invoke-interface {v0}, Lmya;->a()I

    move-result v0

    iput v0, p0, Lmyh;->e:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmyh;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyh;->f:Z

    iget-object v0, p0, Lmyh;->c:Lmya;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lmya;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lmyh;->f:Z

    invoke-static {v0}, Llkj;->u(Z)V

    iget v0, p0, Lmyh;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmyh;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmyh;->a:Lmyb;

    iget-object v1, p0, Lmyh;->c:Lmya;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lmya;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmyb;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lmyh;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmyh;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyh;->f:Z

    return-void
.end method
