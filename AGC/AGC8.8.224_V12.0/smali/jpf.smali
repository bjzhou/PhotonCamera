.class public final Ljpf;
.super Ljph;


# instance fields
.field final synthetic a:Ljde;


# direct methods
.method public constructor <init>(Ljde;Lkgd;[B[B)V
    .locals 0

    iput-object p1, p0, Ljpf;->a:Ljde;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Ljph;-><init>(Lkgd;[B[B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p1, p0, Ljpf;->a:Ljde;

    iget-object p1, p1, Ljde;->e:Ljcy;

    check-cast p1, Ljpi;

    const/4 v0, 0x0

    iput-object v0, p1, Ljpi;->a:Ljnt;

    iget-object p1, p0, Ljpf;->c:Lkgd;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void
.end method
