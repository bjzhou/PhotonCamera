.class final Lmue;
.super Lmyf;


# instance fields
.field final synthetic a:Lmuf;


# direct methods
.method public constructor <init>(Lmuf;)V
    .locals 0

    iput-object p1, p0, Lmue;->a:Lmuf;

    invoke-direct {p0}, Lmyf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lmyb;
    .locals 1

    iget-object v0, p0, Lmue;->a:Lmuf;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmue;->a:Lmuf;

    invoke-virtual {v0}, Lmuf;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmue;->a:Lmuf;

    invoke-virtual {v0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0}, Lmzi;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
