.class public abstract Lbni;
.super Ljava/lang/Object;


# static fields
.field public static final i:Lboc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lboc;

    const-string v1, "CamAgnt"

    invoke-direct {v0, v1}, Lboc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbni;->i:Lboc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/os/Handler;
.end method

.method public abstract b()Lbnr;
.end method

.method public abstract c()Lbnv;
.end method

.method protected abstract d()Lbnx;
.end method

.method public abstract e()Lbny;
.end method

.method public abstract f(Lbnv;)V
.end method

.method public final g(Z)V
    .locals 3

    const/4 v0, 0x7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lbni;->d()Lbnx;

    move-result-object p1

    invoke-virtual {p1}, Lbnx;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lbnh;

    invoke-direct {p1}, Lbnh;-><init>()V

    invoke-virtual {p0}, Lbni;->e()Lbny;

    move-result-object v1

    new-instance v2, Lbem;

    invoke-direct {v2, p0, p1, v0}, Lbem;-><init>(Lbni;Lbnh;I)V

    iget-object p1, p1, Lbnh;->b:Ljava/lang/Object;

    const-string v0, "camera release"

    invoke-virtual {v1, v2, p1, v0}, Lbny;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lbni;->e()Lbny;

    move-result-object p1

    new-instance v1, Lazo;

    invoke-direct {v1, p0, v0}, Lazo;-><init>(Lbni;I)V

    invoke-virtual {p1, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbni;->c()Lbnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method
