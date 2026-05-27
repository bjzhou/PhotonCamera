.class final Letu;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Leuc;


# direct methods
.method public constructor <init>(Leuc;)V
    .locals 0

    iput-object p1, p0, Letu;->a:Leuc;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 3

    iget-object v0, p0, Letu;->a:Leuc;

    invoke-virtual {v0}, Leuc;->x()V

    iget-object v0, p0, Letu;->a:Leuc;

    iget-object v0, v0, Leuc;->d:Ldbf;

    new-instance v1, Lett;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lett;-><init>(Letu;I)V

    invoke-virtual {v0, v1}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onThumbnailButtonClicked()V
    .locals 0

    return-void
.end method
