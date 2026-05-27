.class Lcxf;
.super Lcxc;


# instance fields
.field final synthetic b:Lcxh;


# direct methods
.method public constructor <init>(Lcxh;)V
    .locals 0

    iput-object p1, p0, Lcxf;->b:Lcxh;

    invoke-direct {p0}, Lcxc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcxf;->b:Lcxh;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v1, Lcwx;->b:Lcwx;

    invoke-virtual {v0, v1}, Lcvr;->b(Lcwx;)F

    move-result v0

    iget-object v1, p0, Lcxf;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1}, Litm;->s()V

    iget-object v1, p0, Lcxf;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1, v0}, Litm;->F(F)V

    iget-object v1, p0, Lcxf;->b:Lcxh;

    iget-object v1, v1, Lcxh;->g:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcxf;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1, v0}, Litm;->D(F)V

    :cond_0
    return-void
.end method
