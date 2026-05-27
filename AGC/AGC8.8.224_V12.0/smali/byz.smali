.class public final Lbyz;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field public final synthetic a:Ljvq;


# direct methods
.method public constructor <init>(Ljvq;[B[B)V
    .locals 0

    iput-object p1, p0, Lbyz;->a:Ljvq;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    new-instance v0, Lbnd;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lbnd;-><init>(Lbyz;ZI)V

    invoke-static {v0}, Lcaw;->i(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbyz;->a(Z)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbyz;->a(Z)V

    return-void
.end method
