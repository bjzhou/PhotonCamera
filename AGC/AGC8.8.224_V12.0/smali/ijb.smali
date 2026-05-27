.class final Lijb;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Lije;


# direct methods
.method public constructor <init>(Lije;)V
    .locals 0

    iput-object p1, p0, Lijb;->a:Lije;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClicked()V
    .locals 1

    iget-object v0, p0, Lijb;->a:Lije;

    iget-object v0, v0, Lije;->h:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lijb;->a:Lije;

    iget-object v0, v0, Lije;->h:Lgeh;

    invoke-interface {v0}, Lgeh;->M()V

    :cond_0
    return-void
.end method
