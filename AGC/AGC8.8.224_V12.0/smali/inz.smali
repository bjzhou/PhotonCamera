.class Linz;
.super Linx;


# instance fields
.field final synthetic b:Liod;


# direct methods
.method public constructor <init>(Liod;)V
    .locals 0

    iput-object p1, p0, Linz;->b:Liod;

    invoke-direct {p0}, Linx;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->d:Lioe;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lioe;->b(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->d:Lioe;

    check-cast v0, Liof;

    const/4 v1, 0x0

    iput-boolean v1, v0, Liof;->m:Z

    iget-boolean v1, v0, Liof;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Liof;->c()V

    :cond_0
    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->g:Linw;

    invoke-virtual {v0}, Lins;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Linz;->b:Liod;

    iget-object v0, v0, Liod;->g:Linw;

    invoke-virtual {v0}, Lins;->g()V

    return-void
.end method
