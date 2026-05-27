.class Liai;
.super Liad;


# instance fields
.field final synthetic b:Liaj;


# direct methods
.method public constructor <init>(Liaj;)V
    .locals 0

    iput-object p1, p0, Liai;->b:Liaj;

    invoke-direct {p0}, Liad;-><init>()V

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

.method public final f()V
    .locals 2

    iget-object v0, p0, Liai;->b:Liaj;

    iget-object v0, v0, Liaj;->g:Liaq;

    invoke-interface {v0}, Liaq;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liai;->b:Liaj;

    iget-object v0, v0, Liaj;->g:Liaq;

    invoke-interface {v0}, Liaq;->e()V

    :cond_0
    iget-object v0, p0, Liai;->b:Liaj;

    iget-object v0, v0, Liaj;->h:Liaq;

    invoke-interface {v0}, Liaq;->h()V

    iget-object v0, p0, Liai;->b:Liaj;

    iget-object v0, v0, Liaj;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Liai;->b:Liaj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liaj;->i(Z)V

    return-void
.end method
