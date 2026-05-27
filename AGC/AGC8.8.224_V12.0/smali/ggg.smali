.class public final synthetic Lggg;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ldkl;Ldkk;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lggg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggg;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggg;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;Lglt;Lmqp;I)V
    .locals 0

    iput p4, p0, Lggg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggg;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggg;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lggg;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lggg;->a:Ljava/lang/Object;

    iget-object v2, p0, Lggg;->b:Ljava/lang/Object;

    iget-object v3, p0, Lggg;->c:Ljava/lang/Object;

    new-instance v4, Ldki;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ldki;-><init>(Ljava/lang/String;)V

    check-cast v0, Ldkl;

    invoke-virtual {v0, v2, v1, v4}, Ldkl;->a(Ldkk;ZLdkj;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lggg;->a:Ljava/lang/Object;

    iget-object v2, p0, Lggg;->b:Ljava/lang/Object;

    iget-object v3, p0, Lggg;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lglt;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkgq;

    iget-object v4, v4, Lkgq;->c:Lmwn;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lglt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    iget-object v0, v0, Lkgq;->c:Lmwn;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
