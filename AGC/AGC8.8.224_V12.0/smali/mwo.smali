.class final Lmwo;
.super Lmvv;


# instance fields
.field final synthetic a:Lmwp;


# direct methods
.method public constructor <init>(Lmwp;)V
    .locals 0

    iput-object p1, p0, Lmwo;->a:Lmwp;

    invoke-direct {p0}, Lmvv;-><init>()V

    return-void
.end method


# virtual methods
.method public final cA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lmwo;->a:Lmwp;

    iget-object v1, v1, Lmwp;->a:Lmws;

    iget-object v1, v1, Lmws;->a:Lmzb;

    iget-object v1, v1, Lmzb;->d:Lmvv;

    invoke-virtual {v1, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmwo;->a:Lmwp;

    iget-object v2, v2, Lmwp;->a:Lmws;

    iget-object v2, v2, Lmws;->b:Lmvv;

    invoke-virtual {v2, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmwo;->a:Lmwp;

    iget-object v0, v0, Lmwp;->a:Lmws;

    invoke-virtual {v0}, Lmws;->size()I

    move-result v0

    return v0
.end method
