.class public Lhdo;
.super Ljava/lang/Object;

# interfaces
.implements Lhdy;


# instance fields
.field public a:Lheb;

.field private b:Lhec;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lhdo;->a:Lheb;

    iget-object v1, p0, Lhdo;->b:Lhec;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lhec;->a()V

    iput-object v0, p0, Lhdo;->b:Lhec;

    :cond_0
    return-void
.end method

.method public b(Lhec;)V
    .locals 1

    iput-object p1, p0, Lhdo;->b:Lhec;

    iget-object v0, p0, Lhdo;->a:Lheb;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lhec;->b(Lheb;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lhdo;->a:Lheb;

    iget-object v0, p0, Lhdo;->b:Lhec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhec;->a()V

    :cond_0
    return-void
.end method

.method public final d(Lheb;)V
    .locals 4

    invoke-virtual {p1}, Lheb;->b()Lhea;

    move-result-object v0

    iget-object v1, p1, Lheb;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    new-instance v2, Lhdg;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lhdg;-><init>(Lhdo;Ljava/lang/Runnable;I)V

    iput-object v2, v0, Lhea;->c:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p1, Lheb;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    new-instance v2, Lhdg;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lhdg;-><init>(Lhdo;Ljava/lang/Runnable;I)V

    iput-object v2, v0, Lhea;->f:Ljava/lang/Runnable;

    :cond_1
    iget-object v1, p1, Lheb;->f:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    new-instance v2, Lhdg;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v1, v3}, Lhdg;-><init>(Lhdo;Ljava/lang/Runnable;I)V

    iput-object v2, v0, Lhea;->d:Ljava/lang/Runnable;

    :cond_2
    iget-object v1, p1, Lheb;->k:Ljava/lang/Runnable;

    iget-boolean p1, p1, Lheb;->l:Z

    if-nez p1, :cond_3

    new-instance p1, Lhdg;

    const/4 v2, 0x5

    invoke-direct {p1, p0, v1, v2}, Lhdg;-><init>(Lhdo;Ljava/lang/Runnable;I)V

    iput-object p1, v0, Lhea;->i:Ljava/lang/Runnable;

    :cond_3
    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object p1

    iget-object v0, p0, Lhdo;->b:Lhec;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lhdo;->c:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lhdo;->a:Lheb;

    if-eqz v1, :cond_4

    invoke-interface {v0, p1}, Lhec;->c(Lheb;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0, p1}, Lhec;->b(Lheb;)V

    :cond_5
    :goto_0
    iput-object p1, p0, Lhdo;->a:Lheb;

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdo;->c:Z

    return-void
.end method

.method public final w()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdo;->c:Z

    iget-object v0, p0, Lhdo;->a:Lheb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhdo;->b:Lhec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lhec;->b(Lheb;)V

    :cond_0
    return-void
.end method
