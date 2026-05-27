.class Leqr;
.super Leqo;


# instance fields
.field final synthetic b:Leqt;


# direct methods
.method public constructor <init>(Leqt;)V
    .locals 0

    iput-object p1, p0, Leqr;->b:Leqt;

    invoke-direct {p0}, Leqo;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Leqr;->b:Leqt;

    iget-object v0, v0, Leqt;->f:Liec;

    invoke-interface {v0}, Liec;->i()V

    iget-object v0, p0, Leqr;->b:Leqt;

    iget-object v0, v0, Leqt;->h:Libj;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Leqr;->b:Leqt;

    iget-object v0, v0, Leqt;->e:Liff;

    invoke-interface {v0, v1}, Liff;->G(Z)V

    iget-object v0, p0, Leqr;->b:Leqt;

    iget-object v0, v0, Leqt;->i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    return-void
.end method
