.class public final synthetic Llpo;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lgap;Lfvd;ZI)V
    .locals 0

    iput p4, p0, Llpo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpo;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpo;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Llpo;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Llon;Ljava/lang/String;ZI)V
    .locals 0

    iput p4, p0, Llpo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpo;->b:Ljava/lang/Object;

    iput-object p2, p0, Llpo;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Llpo;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Llpo;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llpo;->c:Ljava/lang/Object;

    iget-object v1, p0, Llpo;->b:Ljava/lang/Object;

    iget-boolean v2, p0, Llpo;->a:Z

    check-cast v0, Lgap;

    iget-object v3, v0, Lgap;->a:Lnou;

    invoke-static {v3}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgam;

    iget-object v0, v0, Lgap;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    check-cast v1, Lfvd;

    invoke-virtual {v1}, Lfvd;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez v0, :cond_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Llpo;->b:Ljava/lang/Object;

    iget-object v1, p0, Llpo;->c:Ljava/lang/Object;

    iget-boolean v2, p0, Llpo;->a:Z

    new-instance v3, Llpp;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Llon;

    invoke-direct {v3, v0, v1, v2}, Llpp;-><init>(Llon;Ljava/lang/String;Z)V

    return-object v3

    :cond_0
    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lgam;->a()Ljvs;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
