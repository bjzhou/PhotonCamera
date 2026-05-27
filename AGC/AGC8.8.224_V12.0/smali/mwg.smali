.class final Lmwg;
.super Lmvv;


# instance fields
.field final synthetic a:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;)V
    .locals 0

    iput-object p1, p0, Lmwg;->a:Lmvv;

    invoke-direct {p0}, Lmvv;-><init>()V

    return-void
.end method


# virtual methods
.method public final cA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmwg;->a:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmwg;->a:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    return v0
.end method
