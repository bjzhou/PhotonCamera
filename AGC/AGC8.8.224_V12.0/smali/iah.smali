.class Liah;
.super Liad;


# instance fields
.field final synthetic b:Liaj;


# direct methods
.method public constructor <init>(Liaj;)V
    .locals 0

    iput-object p1, p0, Liah;->b:Liaj;

    invoke-direct {p0}, Liad;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
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

    iget-object v0, p0, Liah;->b:Liaj;

    iget-object v0, v0, Liaj;->h:Liaq;

    invoke-interface {v0}, Liaq;->e()V

    iget-object v0, p0, Liah;->b:Liaj;

    iget-object v0, v0, Liaj;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Liah;->b:Liaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liaj;->i(Z)V

    return-void
.end method
