.class public final Line;
.super Lbw;


# instance fields
.field public a:Liof;

.field public b:Lmqp;

.field private c:Liod;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbw;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Line;->b:Lmqp;

    return-void
.end method

.method public static c(Landroid/os/Bundle;Landroid/net/Uri;)Line;
    .locals 1

    const-string v0, "video_uri"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Line;

    invoke-direct {p1}, Line;-><init>()V

    invoke-virtual {p1, p0}, Lbw;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v0, 0x7f0e010e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Linr;

    invoke-direct {p2}, Linr;-><init>()V

    iput-object p2, p0, Line;->c:Liod;

    new-instance p2, Lini;

    new-instance v0, Ldom;

    const/4 v8, 0x6

    invoke-direct {v0, p0, v8}, Ldom;-><init>(Line;I)V

    invoke-direct {p2, v0}, Lini;-><init>(Loiw;)V

    new-instance v0, Linn;

    invoke-direct {v0}, Linn;-><init>()V

    iget-object v2, p0, Lbw;->l:Landroid/os/Bundle;

    const-string v3, "auto_loop_enabled"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v2, p0, Lbw;->l:Landroid/os/Bundle;

    const-string v3, "no_seek_bar"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-instance v10, Liof;

    iget-object v3, p0, Line;->c:Liod;

    move-object v2, v10

    move-object v4, p2

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Liof;-><init>(Liod;Lini;Linw;Landroid/view/View;Z)V

    iput-object v10, p0, Line;->a:Liof;

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, v10, Liof;->f:Landroid/widget/VideoView;

    iget-object v2, v10, Liof;->f:Landroid/widget/VideoView;

    new-instance v3, Lclb;

    const/16 v4, 0x14

    invoke-direct {v3, v10, v4}, Lclb;-><init>(Liof;I)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    new-instance v3, Lidm;

    invoke-direct {v3, v10, v8}, Lidm;-><init>(Liof;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v10, Liof;->f:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v10, Liof;->h:Landroid/widget/ImageButton;

    iget-object v2, v10, Liof;->h:Landroid/widget/ImageButton;

    new-instance v3, Lidm;

    const/4 v4, 0x5

    invoke-direct {v3, v10, v4}, Lidm;-><init>(Liof;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v10, Liof;->g:Landroid/widget/ImageButton;

    iget-object v2, v10, Liof;->g:Landroid/widget/ImageButton;

    new-instance v3, Lidm;

    const/4 v4, 0x4

    invoke-direct {v3, v10, v4}, Lidm;-><init>(Liof;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v10, Liof;->l:Landroid/view/View;

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, v10, Liof;->k:Landroid/widget/SeekBar;

    iget-object v2, v10, Liof;->k:Landroid/widget/SeekBar;

    new-instance v3, Lhwl;

    const/4 v4, 0x2

    invoke-direct {v3, v10, v4}, Lhwl;-><init>(Liof;I)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Liof;->i:Landroid/widget/TextView;

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Liof;->j:Landroid/widget/TextView;

    iget-object v2, v10, Liof;->d:Landroid/view/View;

    const v3, 0x7f0b03e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v10, Liof;->o:Landroid/view/View;

    iget-object v2, p0, Line;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Line;->a:Liof;

    iget-object v2, v2, Liof;->f:Landroid/widget/VideoView;

    iget-object v3, p0, Line;->b:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_0
    iget-object v2, p0, Lbw;->l:Landroid/os/Bundle;

    const-string v3, "video_view_padding"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v3, p0, Line;->a:Liof;

    invoke-virtual {v3, v2}, Liof;->d(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v2, p0, Lbw;->l:Landroid/os/Bundle;

    const-string v3, "video_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Line;->a:Liof;

    new-instance v3, Ljvq;

    invoke-direct {v3, v2}, Ljvq;-><init>(Lioe;)V

    invoke-virtual {v0, v2, v3}, Lins;->c(Lioe;Ljvq;)V

    invoke-virtual {v0}, Lins;->f()V

    invoke-virtual {v0}, Lins;->g()V

    iget-object v2, p0, Line;->c:Liod;

    iget-object v3, p0, Line;->a:Liof;

    if-nez p3, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const-string v5, "videoplayer_position"

    invoke-virtual {p3, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v7, v1

    :goto_0
    const/4 v1, 0x1

    if-nez p3, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "videoplayer_playing_state"

    invoke-virtual {p3, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    move v8, p3

    :goto_1
    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Linx;->j(Lioe;Landroid/net/Uri;Lini;Linw;IZZ)V

    iget-object p3, p0, Line;->c:Liod;

    invoke-virtual {p3}, Linx;->f()V

    invoke-virtual {p2}, Linf;->f()V

    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lbw;->onPause()V

    iget-object v0, p0, Line;->c:Liod;

    invoke-virtual {v0}, Linx;->b()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lbw;->onResume()V

    iget-object v0, p0, Line;->c:Liod;

    invoke-virtual {v0}, Linx;->k()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Line;->a:Liof;

    iget-object v0, v0, Liof;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Line;->a:Liof;

    iget-object v1, v1, Liof;->f:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    const-string v2, "videoplayer_playing_state"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "videoplayer_position"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
