.class public final synthetic Liob;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;I)V
    .locals 0

    iput p2, p0, Liob;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liob;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lioc;I)V
    .locals 0

    iput p2, p0, Liob;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liob;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget v0, p0, Liob;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liob;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lhsw;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lhsw;->onPrepared(Landroid/media/MediaPlayer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Liob;->a:Ljava/lang/Object;

    check-cast v0, Lioc;

    iget-object v1, v0, Lioc;->b:Liod;

    iget-boolean v1, v1, Liod;->k:Z

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, v0, Lioc;->b:Liod;

    iget-boolean v0, p1, Liod;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linx;->i()V

    return-void

    :cond_0
    invoke-virtual {p1}, Linx;->co()V

    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
