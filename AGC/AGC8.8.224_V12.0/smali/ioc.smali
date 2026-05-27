.class Lioc;
.super Linx;


# instance fields
.field final synthetic b:Liod;


# direct methods
.method public constructor <init>(Liod;)V
    .locals 0

    iput-object p1, p0, Lioc;->b:Liod;

    invoke-direct {p0}, Linx;-><init>()V

    return-void
.end method


# virtual methods
.method public co()V
    .locals 2

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->d:Lioe;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lioe;->a(I)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->e:Landroid/widget/VideoView;

    iget v0, v0, Liod;->i:I

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->d:Lioe;

    iget v0, v0, Liod;->i:I

    invoke-interface {v1, v0}, Lioe;->b(I)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v0, v0, Liod;->f:Lini;

    invoke-virtual {v0}, Linf;->a()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->h:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    new-instance v1, Lioa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lioa;-><init>(Lioc;I)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    new-instance v1, Liob;

    invoke-direct {v1, p0, v2}, Liob;-><init>(Lioc;I)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->d:Lioe;

    iget-object v0, v0, Liod;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lioe;->a(I)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->e:Landroid/widget/VideoView;

    iget v0, v0, Liod;->i:I

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v1, v0, Liod;->d:Lioe;

    iget v0, v0, Liod;->i:I

    invoke-interface {v1, v0}, Lioe;->b(I)V

    iget-object v0, p0, Lioc;->b:Liod;

    iget-object v0, v0, Liod;->f:Lini;

    invoke-virtual {v0}, Linf;->b()V

    return-void
.end method
