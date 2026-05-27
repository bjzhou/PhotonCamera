.class Lhtq;
.super Lhtm;


# instance fields
.field final synthetic a:Lhtz;


# direct methods
.method public constructor <init>(Lhtz;)V
    .locals 0

    iput-object p1, p0, Lhtq;->a:Lhtz;

    invoke-direct {p0}, Lhtm;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lhtq;->a:Lhtz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhtz;->m:Z

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    sget-object v1, Lika;->d:Lika;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Libj;->j(Lika;Z)V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    sget-object v1, Lika;->d:Lika;

    invoke-virtual {v0, v1}, Lhtz;->B(Lika;)V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->v()V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->u()V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->c()V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->p:Ljew;

    sget-object v1, Lika;->d:Lika;

    invoke-static {v1}, Lijy;->b(Lika;)Lijy;

    move-result-object v1

    iget-object v3, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v3}, Lhtz;->r()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Lijy;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lika;->d:Lika;

    invoke-static {v3}, Lijy;->b(Lika;)Lijy;

    move-result-object v3

    iget-object v4, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v4}, Lhtz;->r()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lijy;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljew;->D(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->p:Ljew;

    invoke-virtual {v0}, Ljew;->B()V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v0, v2}, Lhtz;->A(I)V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    iput-boolean v2, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget v1, v0, Lhtz;->l:I

    invoke-virtual {v0, v1}, Lhtz;->A(I)V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->g:Lcfp;

    invoke-virtual {v0}, Lcfp;->c()V

    iget-object v0, p0, Lhtq;->a:Lhtz;

    iget-object v0, v0, Lhtz;->p:Ljew;

    invoke-virtual {v0}, Ljew;->C()V

    return-void
.end method
