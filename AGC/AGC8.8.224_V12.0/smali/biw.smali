.class public final Lbiw;
.super Ljava/lang/Object;

# interfaces
.implements Lbiz;


# instance fields
.field private final a:Lbip;

.field private final b:Lbip;


# direct methods
.method public constructor <init>(Lbip;Lbip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiw;->a:Lbip;

    iput-object p2, p0, Lbiw;->b:Lbip;

    return-void
.end method


# virtual methods
.method public final a()Lbhs;
    .locals 3

    new-instance v0, Lbid;

    iget-object v1, p0, Lbiw;->a:Lbip;

    invoke-virtual {v1}, Lbip;->a()Lbhs;

    move-result-object v1

    iget-object v2, p0, Lbiw;->b:Lbip;

    invoke-virtual {v2}, Lbip;->a()Lbhs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbid;-><init>(Lbhs;Lbhs;)V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lbiw;->a:Lbip;

    invoke-virtual {v0}, Lbja;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiw;->b:Lbip;

    invoke-virtual {v0}, Lbja;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
