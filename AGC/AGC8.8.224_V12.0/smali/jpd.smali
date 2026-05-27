.class final Ljpd;
.super Ljpn;


# instance fields
.field final synthetic a:Lkgd;


# direct methods
.method public constructor <init>(Lkgd;[B[B)V
    .locals 0

    iput-object p1, p0, Ljpd;->a:Lkgd;

    invoke-direct {p0}, Ljpn;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;Ljpm;)V
    .locals 3

    new-instance v0, Lnaa;

    new-instance v1, Ljpp;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, p2}, Ljpp;-><init>(Lcom/google/android/gms/common/api/Status;Ljpm;)V

    invoke-direct {v0, v1}, Lnaa;-><init>(Ljdq;)V

    iget-object p2, p0, Ljpd;->a:Lkgd;

    invoke-static {p1, v0, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return-void
.end method
