.class final Leve;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Levk;


# direct methods
.method public constructor <init>(Levk;)V
    .locals 0

    iput-object p1, p0, Leve;->a:Levk;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 3

    iget-object v0, p0, Leve;->a:Levk;

    iget-object v0, v0, Levk;->d:Ldbf;

    new-instance v1, Levi;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Levi;-><init>(Leve;I)V

    invoke-virtual {v0, v1}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onThumbnailButtonClicked()V
    .locals 0

    return-void
.end method
