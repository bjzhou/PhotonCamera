.class public final synthetic Lgis;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lkaq;Lkgi;Ljuf;I)V
    .locals 0

    iput p5, p0, Lgis;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgis;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgis;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgis;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgis;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepb;Lepl;Ljvk;Leph;I)V
    .locals 0

    iput p5, p0, Lgis;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgis;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgis;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgis;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgis;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfub;Lghg;Lker;Lkad;I)V
    .locals 0

    iput p5, p0, Lgis;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgis;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgis;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgis;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgis;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhef;Lmqp;Lmqp;Lmqp;I)V
    .locals 0

    iput p5, p0, Lgis;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgis;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgis;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgis;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgis;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget v0, p0, Lgis;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgis;->a:Ljava/lang/Object;

    iget-object v2, p0, Lgis;->d:Ljava/lang/Object;

    iget-object v3, p0, Lgis;->c:Ljava/lang/Object;

    iget-object v4, p0, Lgis;->b:Ljava/lang/Object;

    new-instance v5, Lkgc;

    check-cast v4, Ljuf;

    check-cast v3, Lkgi;

    invoke-direct {v5, v2, v3, v4, v1}, Lkgc;-><init>(Lkaq;Lkgi;Ljuf;I)V

    check-cast v0, Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lgis;->a:Ljava/lang/Object;

    iget-object v1, p0, Lgis;->b:Ljava/lang/Object;

    iget-object v2, p0, Lgis;->d:Ljava/lang/Object;

    iget-object v3, p0, Lgis;->c:Ljava/lang/Object;

    check-cast v3, Lmqp;

    check-cast v2, Lmqp;

    check-cast v1, Lmqp;

    check-cast v0, Lhef;

    invoke-virtual {v0, v1, v2, v3}, Lhef;->f(Lmqp;Lmqp;Lmqp;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lgis;->a:Ljava/lang/Object;

    iget-object v2, p0, Lgis;->d:Ljava/lang/Object;

    iget-object v3, p0, Lgis;->c:Ljava/lang/Object;

    iget-object v4, p0, Lgis;->b:Ljava/lang/Object;

    new-instance v5, Leow;

    check-cast v4, Leph;

    check-cast v3, Ljvk;

    check-cast v0, Lepb;

    invoke-direct {v5, v0, v3, v4, v1}, Leow;-><init>(Lepb;Ljvk;Leph;I)V

    check-cast v2, Lepl;

    invoke-virtual {v2, v5}, Lepl;->f(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lgis;->a:Ljava/lang/Object;

    iget-object v1, p0, Lgis;->b:Ljava/lang/Object;

    iget-object v2, p0, Lgis;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgis;->d:Ljava/lang/Object;

    invoke-interface {v0}, Lfub;->close()V

    invoke-interface {v1}, Lghg;->close()V

    invoke-interface {v2}, Lker;->close()V

    invoke-interface {v3}, Lkad;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
