.class final Lcou;
.super Lifk;


# instance fields
.field final synthetic a:Lcox;


# direct methods
.method public constructor <init>(Lcox;)V
    .locals 0

    iput-object p1, p0, Lcou;->a:Lcox;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 3

    iget-object v0, p0, Lcou;->a:Lcox;

    iget-object v0, v0, Lcox;->z:Ljew;

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcou;->a:Lcox;

    iget-object v0, v0, Lcox;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqs;

    invoke-interface {v1, v2}, Lcqs;->i(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcou;->a:Lcox;

    iget-object v0, v0, Lcox;->f:Liff;

    invoke-interface {v0, v2}, Liff;->z(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcou;->a:Lcox;

    iget-object v0, v0, Lcox;->j:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    return-void
.end method

.method public final onShutterButtonDown()V
    .locals 3

    iget-object v0, p0, Lcou;->a:Lcox;

    iget-object v0, v0, Lcox;->z:Ljew;

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcou;->a:Lcox;

    iget-object v0, v0, Lcox;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqs;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcqs;->i(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
