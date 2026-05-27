.class public final Leti;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Ldbf;

.field public final synthetic b:Letp;

.field final synthetic c:Lijx;


# direct methods
.method public constructor <init>(Letp;Lijx;Ldbf;)V
    .locals 0

    iput-object p1, p0, Leti;->b:Letp;

    iput-object p2, p0, Leti;->c:Lijx;

    iput-object p3, p0, Leti;->a:Ldbf;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 4

    iget-object v0, p0, Leti;->c:Lijx;

    iget-boolean v0, v0, Lijx;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Leti;->a:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    iget-object v1, p0, Leti;->a:Ldbf;

    new-instance v2, Lekf;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v0, v3}, Lekf;-><init>(Leti;Lklv;I)V

    invoke-virtual {v1, v2}, Ldbf;->h(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onThumbnailButtonClicked()V
    .locals 0

    return-void
.end method
