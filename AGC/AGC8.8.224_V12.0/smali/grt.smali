.class Lgrt;
.super Lgrs;


# instance fields
.field final synthetic b:Lgrv;


# direct methods
.method public constructor <init>(Lgrv;)V
    .locals 0

    iput-object p1, p0, Lgrt;->b:Lgrv;

    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lgrt;->b:Lgrv;

    iget-object v0, v0, Lgrv;->a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    iget-object v0, p0, Lgrt;->b:Lgrv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgrv;->b:Z

    return-void
.end method
