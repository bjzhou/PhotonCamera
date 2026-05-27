.class final Ljvt;
.super Ljwh;


# instance fields
.field final synthetic a:Lmqi;

.field final synthetic b:Ljvs;


# direct methods
.method public constructor <init>(Ljvs;Lmqi;Ljvs;)V
    .locals 0

    iput-object p2, p0, Ljvt;->a:Lmqi;

    iput-object p3, p0, Ljvt;->b:Ljvs;

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    return-void
.end method


# virtual methods
.method protected final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljvt;->a:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TransformedObs"

    invoke-static {v0}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Ljvt;->b:Ljvs;

    const-string v2, "input"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ljvt;->a:Lmqi;

    const-string v2, "func"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
