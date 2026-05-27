.class public final Letn;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lcij;Ljava/lang/String;Loiw;I)V
    .locals 0

    iput p4, p0, Letn;->d:I

    iput-object p1, p0, Letn;->a:Ljava/lang/Object;

    iput-object p2, p0, Letn;->c:Ljava/lang/Object;

    iput-object p3, p0, Letn;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Letp;Lcjd;Ljuf;I)V
    .locals 0

    iput p4, p0, Letn;->d:I

    iput-object p1, p0, Letn;->c:Ljava/lang/Object;

    iput-object p2, p0, Letn;->a:Ljava/lang/Object;

    iput-object p3, p0, Letn;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Letn;->d:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    sget-object v0, Letp;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "OneCamera open sequence was canceled, shutting down lifetime."

    const/16 v2, 0x76c

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Letp;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "OneCamera failed to open, closing lifetime."

    const/16 v2, 0x76b

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Letn;->b:Ljava/lang/Object;

    check-cast p1, Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    iget-object p1, p0, Letn;->c:Ljava/lang/Object;

    check-cast p1, Letp;

    iget-object p1, p1, Letp;->o:Lici;

    invoke-virtual {p1}, Lici;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Letn;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Letn;->a:Ljava/lang/Object;

    check-cast p1, Lcij;

    iget-object p1, p1, Lcij;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Letn;->c:Ljava/lang/Object;

    iget-object v4, p0, Letn;->b:Ljava/lang/Object;

    new-instance v7, Lblx;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lblx;-><init>(Letn;Ljava/lang/String;Loiw;I[B)V

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast p1, Lftg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Letn;->a:Ljava/lang/Object;

    check-cast v0, Lcjd;

    invoke-virtual {v0}, Lcjd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Letn;->c:Ljava/lang/Object;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->g:Lkbc;

    iget-object v1, p0, Letn;->b:Ljava/lang/Object;

    new-instance v2, Letm;

    check-cast v1, Ljuf;

    invoke-direct {v2, p0, p1, v1}, Letm;-><init>(Letn;Lftg;Ljuf;)V

    const-string p1, "onCameraStarted"

    invoke-interface {v0, p1, v2}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
