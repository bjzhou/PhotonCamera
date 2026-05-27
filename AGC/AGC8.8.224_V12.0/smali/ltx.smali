.class public final Lltx;
.super Ljava/lang/Object;


# instance fields
.field public a:Lmqp;

.field public b:Lmqp;

.field public c:Lmqp;

.field private d:Lmvq;

.field private e:Lmvv;

.field private f:Lmvq;

.field private g:Lmvv;

.field private h:Lmqp;

.field private i:Lmqp;

.field private j:Lmvv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lltx;->a:Lmqp;

    iput-object p1, p0, Lltx;->h:Lmqp;

    iput-object p1, p0, Lltx;->i:Lmqp;

    iput-object p1, p0, Lltx;->b:Lmqp;

    iput-object p1, p0, Lltx;->c:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Llty;
    .locals 10

    iget-object v0, p0, Lltx;->d:Lmvq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object v0

    iput-object v0, p0, Lltx;->e:Lmvv;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lltx;->e:Lmvv;

    if-nez v0, :cond_1

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iput-object v0, p0, Lltx;->e:Lmvv;

    :cond_1
    :goto_0
    iget-object v0, p0, Lltx;->f:Lmvq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object v0

    iput-object v0, p0, Lltx;->g:Lmvv;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lltx;->g:Lmvv;

    if-nez v0, :cond_3

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iput-object v0, p0, Lltx;->g:Lmvv;

    :cond_3
    :goto_1
    iget-object v0, p0, Lltx;->j:Lmvv;

    if-nez v0, :cond_4

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iput-object v0, p0, Lltx;->j:Lmvv;

    :cond_4
    new-instance v0, Llty;

    iget-object v2, p0, Lltx;->a:Lmqp;

    iget-object v3, p0, Lltx;->e:Lmvv;

    iget-object v4, p0, Lltx;->g:Lmvv;

    iget-object v5, p0, Lltx;->h:Lmqp;

    iget-object v6, p0, Lltx;->i:Lmqp;

    iget-object v7, p0, Lltx;->b:Lmqp;

    iget-object v8, p0, Lltx;->j:Lmvv;

    iget-object v9, p0, Lltx;->c:Lmqp;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Llty;-><init>(Lmqp;Lmvv;Lmvv;Lmqp;Lmqp;Lmqp;Lmvv;Lmqp;)V

    return-object v0
.end method

.method public final b()Lmvq;
    .locals 2

    iget-object v0, p0, Lltx;->d:Lmvq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lltx;->e:Lmvv;

    if-nez v0, :cond_0

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    iput-object v0, p0, Lltx;->d:Lmvq;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    iput-object v0, p0, Lltx;->d:Lmvq;

    iget-object v1, p0, Lltx;->e:Lmvv;

    invoke-virtual {v0, v1}, Lmvq;->h(Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lltx;->e:Lmvv;

    :cond_1
    :goto_0
    iget-object v0, p0, Lltx;->d:Lmvq;

    return-object v0
.end method

.method public final c()Lmvq;
    .locals 2

    iget-object v0, p0, Lltx;->f:Lmvq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lltx;->g:Lmvv;

    if-nez v0, :cond_0

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    iput-object v0, p0, Lltx;->f:Lmvq;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    iput-object v0, p0, Lltx;->f:Lmvq;

    iget-object v1, p0, Lltx;->g:Lmvv;

    invoke-virtual {v0, v1}, Lmvq;->h(Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lltx;->g:Lmvv;

    :cond_1
    :goto_0
    iget-object v0, p0, Lltx;->f:Lmvq;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lltx;->h:Lmqp;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lltx;->i:Lmqp;

    return-void
.end method
