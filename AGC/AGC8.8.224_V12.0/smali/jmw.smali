.class final Ljmw;
.super Ljmn;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lkgd;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkgd;[B[B)V
    .locals 0

    iput-object p1, p0, Ljmw;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljmw;->b:Lkgd;

    invoke-direct {p0}, Ljmn;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljml;)V
    .locals 2

    iget-object p1, p1, Ljml;->a:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Ljmw;->a:Ljava/lang/Object;

    iget-object v1, p0, Ljmw;->b:Lkgd;

    invoke-static {p1, v0, v1}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
