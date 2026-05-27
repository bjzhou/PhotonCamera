.class abstract Lmvd;
.super Ljava/util/AbstractSet;


# instance fields
.field final b:Lmve;


# direct methods
.method public constructor <init>(Lmve;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lmvd;->b:Lmve;

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lmvd;->b:Lmve;

    invoke-virtual {v0}, Lmve;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lmvc;

    invoke-direct {v0, p0}, Lmvc;-><init>(Lmvd;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmvd;->b:Lmve;

    iget v0, v0, Lmve;->c:I

    return v0
.end method
