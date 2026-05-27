.class final Lmwj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmwj;->a:Lmvv;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmwj;->a:Lmvv;

    invoke-virtual {v0}, Lmvv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmwk;->a:Lmwk;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmwj;->a:Lmvv;

    sget-object v1, Lmym;->a:Lmym;

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v1

    invoke-static {v0, v1}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmwk;->b:Lmwk;

    return-object v0

    :cond_1
    new-instance v0, Lmwk;

    iget-object v1, p0, Lmwj;->a:Lmvv;

    invoke-direct {v0, v1}, Lmwk;-><init>(Lmvv;)V

    return-object v0
.end method
