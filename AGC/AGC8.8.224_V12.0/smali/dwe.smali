.class public final synthetic Ldwe;
.super Ljava/lang/Object;

# interfaces
.implements Liky;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field public final synthetic b:Lmwn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lmwn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwe;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iput-object p2, p0, Ldwe;->b:Lmwn;

    return-void
.end method


# virtual methods
.method public final a(Lmqp;)V
    .locals 3

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    iget-object v1, p0, Ldwe;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v2, p0, Ldwe;->b:Lmwn;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    iget-object p1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b()V

    :cond_0
    iget-object p1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->g:Z

    iget-object p1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-interface {p1, v2}, Ldwa;->d(Lmwn;)V

    return-void
.end method
