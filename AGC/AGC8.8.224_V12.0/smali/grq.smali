.class Lgrq;
.super Lgrn;


# instance fields
.field final synthetic b:Lgrr;


# direct methods
.method public constructor <init>(Lgrr;)V
    .locals 0

    iput-object p1, p0, Lgrq;->b:Lgrr;

    invoke-direct {p0}, Lgrn;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lgrq;->b:Lgrr;

    iget-object v0, v0, Lgrr;->a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    iget-object v0, p0, Lgrq;->b:Lgrr;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgrr;->b:Z

    iget-object v0, v0, Lgrr;->c:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lgrq;->b:Lgrr;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgrr;->b:Z

    iget-object v0, v0, Lgrr;->c:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object v0, p0, Lgrq;->b:Lgrr;

    iget-object v0, v0, Lgrr;->a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    return-void
.end method
