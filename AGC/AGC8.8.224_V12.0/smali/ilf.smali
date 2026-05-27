.class final Lilf;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field final synthetic a:Lilg;


# direct methods
.method public constructor <init>(Lilg;)V
    .locals 0

    iput-object p1, p0, Lilf;->a:Lilg;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object p1, p0, Lilf;->a:Lilg;

    iget-object v0, p1, Lilg;->c:Lell;

    iget-object v1, p1, Lilg;->e:Licf;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    iget-object p1, p1, Lilg;->d:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lill;

    invoke-interface {p1}, Lill;->c()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lilf;->a:Lilg;

    iget-object v0, p1, Lilg;->c:Lell;

    iget-object p1, p1, Lilg;->e:Licf;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    return-void
.end method
