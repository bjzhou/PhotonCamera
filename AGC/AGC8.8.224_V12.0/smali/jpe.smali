.class public final Ljpe;
.super Ljph;


# instance fields
.field final synthetic a:Ljde;

.field final synthetic b:Ljnt;


# direct methods
.method public constructor <init>(Ljde;Lkgd;Ljnt;[B[B[B)V
    .locals 0

    iput-object p1, p0, Ljpe;->a:Ljde;

    iput-object p3, p0, Ljpe;->b:Ljnt;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Ljph;-><init>(Lkgd;[B[B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p1, p0, Ljpe;->a:Ljde;

    iget-object p1, p1, Ljde;->e:Ljcy;

    check-cast p1, Ljpi;

    iget-object v0, p0, Ljpe;->b:Ljnt;

    iput-object v0, p1, Ljpi;->a:Ljnt;

    iget-object p1, p0, Ljpe;->c:Lkgd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void
.end method
