.class public final Ljmx;
.super Ljmn;


# instance fields
.field final synthetic a:Ljmg;

.field final synthetic b:Lkgd;


# direct methods
.method public constructor <init>(Lkgd;Ljmg;[B[B)V
    .locals 0

    iput-object p1, p0, Ljmx;->b:Lkgd;

    iput-object p2, p0, Ljmx;->a:Ljmg;

    invoke-direct {p0}, Ljmn;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljml;)V
    .locals 1

    iget-object p1, p1, Ljml;->a:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Ljmx;->b:Lkgd;

    invoke-static {p1, v0}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ljmx;->a:Ljmg;

    invoke-interface {v0}, Ljmg;->e()V

    return-void
.end method
