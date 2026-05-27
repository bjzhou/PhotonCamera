.class public final synthetic Lioa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;I)V
    .locals 0

    iput p2, p0, Lioa;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lioa;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lioc;I)V
    .locals 0

    iput p2, p0, Lioa;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lioa;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget v0, p0, Lioa;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lioa;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lhsw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lhsw;->onCompletion(Landroid/media/MediaPlayer;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lioa;->a:Ljava/lang/Object;

    check-cast p1, Lioc;

    iget-object v0, p1, Lioc;->b:Liod;

    invoke-virtual {v0}, Linx;->c()V

    iget-object p1, p1, Lioc;->b:Liod;

    iget-object p1, p1, Liod;->f:Lini;

    invoke-virtual {p1}, Linf;->a()V

    return-void

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
