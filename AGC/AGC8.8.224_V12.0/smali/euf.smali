.class public final Leuf;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field public final synthetic a:Leuj;


# direct methods
.method public constructor <init>(Leuj;)V
    .locals 0

    iput-object p1, p0, Leuf;->a:Leuj;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 3

    iget-object v0, p0, Leuf;->a:Leuj;

    iget-object v0, v0, Leuj;->c:Ldbf;

    new-instance v1, Lett;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lett;-><init>(Leuf;I)V

    invoke-virtual {v0, v1}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void
.end method
