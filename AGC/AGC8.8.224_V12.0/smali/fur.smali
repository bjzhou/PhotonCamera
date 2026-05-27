.class final Lfur;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lcjd;

.field final synthetic b:Lflj;

.field final synthetic c:Ljuf;

.field final synthetic d:Lfus;


# direct methods
.method public constructor <init>(Lfus;Lcjd;Lflj;Ljuf;)V
    .locals 0

    iput-object p1, p0, Lfur;->d:Lfus;

    iput-object p2, p0, Lfur;->a:Lcjd;

    iput-object p3, p0, Lfur;->b:Lflj;

    iput-object p4, p0, Lfur;->c:Ljuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    sget-object v0, Lfus;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "OneCamera failed to open, closing lifetime."

    const/16 v2, 0x9cc

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lfur;->c:Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    iget-object p1, p0, Lfur;->b:Lflj;

    new-instance v0, Lkdf;

    const-string v1, "OneCamera failed to open"

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lflj;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lftg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lfur;->d:Lfus;

    iput-object p1, v0, Lfus;->d:Lftg;

    invoke-static {v0}, Lfus;->b(Lfus;)V

    iget-object p1, p0, Lfur;->a:Lcjd;

    invoke-virtual {p1}, Lcjd;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfur;->b:Lflj;

    new-instance v0, Lflk;

    iget-object v1, p0, Lfur;->d:Lfus;

    iget-object v2, v1, Lfus;->d:Lftg;

    iget-object v3, p0, Lfur;->c:Ljuf;

    iget-object v4, v1, Lfus;->f:Lflg;

    iget-object v1, v1, Lfus;->g:Lfuz;

    invoke-direct {v0, v2, v3, v4, v1}, Lflk;-><init>(Lftg;Ljuf;Lflg;Lfuz;)V

    invoke-virtual {p1, v0}, Lflj;->b(Lflk;)V

    :cond_0
    return-void
.end method
