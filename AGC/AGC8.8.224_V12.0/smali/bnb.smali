.class public final Lbnb;
.super Ljava/lang/Object;

# interfaces
.implements Lbna;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lbna;


# direct methods
.method private constructor <init>(Lbna;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbnb;->a:Landroid/os/Handler;

    iput-object p1, p0, Lbnb;->b:Lbna;

    return-void
.end method

.method public static e(Landroid/os/Handler;Lbna;)Lbnb;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lbnb;

    invoke-direct {p0, p1}, Lbnb;-><init>(Lbna;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lbnb;->a:Landroid/os/Handler;

    new-instance v1, Lbbh;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lbbh;-><init>(Lbnb;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lbne;)V
    .locals 3

    iget-object v0, p0, Lbnb;->a:Landroid/os/Handler;

    new-instance v1, Lbem;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lbem;-><init>(Lbnb;Lbne;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lbnb;->a:Landroid/os/Handler;

    new-instance v1, Lpi;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, p2, v2}, Lpi;-><init>(Lbnb;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lbnb;->a:Landroid/os/Handler;

    new-instance v1, Lpi;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, p2, v2}, Lpi;-><init>(Lbnb;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
